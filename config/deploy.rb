# config valid only for current version of Capistrano
# capistranoのバージョンを記載。固定のバージョンを利用し続け、バージョン変更によるトラブルを防止する
lock '3.11.2'

# Capistranoのログの表示に利用する
set :application, 'connect2'

# どのリポジトリからアプリをpullするかを指定する
set :repo_url,  'git@github.com:takei-teppei/connect2.git'

# バージョンが変わっても共通で参照するディレクトリを指定
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '2.5.1'

# どの公開鍵を利用してデプロイするか
set :ssh_options, auth_methods: ['publickey'],
                  keys: ['~/.ssh/Connect2.pem'] 

# プロセス番号を記載したファイルの場所
set :unicorn_pid, -> { "#{shared_path}/tmp/pids/unicorn.pid" }

# Unicornの設定ファイルの場所
set :unicorn_config_path, -> { "#{current_path}/config/unicorn.rb" }
set :keep_releases, 5


#secrets.ymlではリリースバージョン間でシンボリックリンクにして共有
#credentials.yml.encではmasterkeyにする（今回）
set :linked_files, %w{config/master.key}

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do

 task :restart do
   invoke 'unicorn:restart'
 end
# restartだとキャッシュが残るので下記の書き方でも良い
# task :restart do
#   invoke 'unicorn:stop'
#   invoke 'unicorn:start'
# end

 desc 'upload master.key'
 task :upload do
   on roles(:app) do |host|
     if test "[ ! -d #{shared_path}/config ]"
       execute "mkdir -p #{shared_path}/config"
     end
     upload!('config/master.key', "#{shared_path}/config/master.key")
   end
 end
 before :starting, 'deploy:upload'
 after :finishing, 'deploy:cleanup'
end

# 必要に応じて/環境変数をcapistranoでの自動デプロイで利用
set :default_env, {
  rbenv_root: "/usr/local/rbenv",
  path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH",
  AWS_ACCESS_KEY_ID: ENV["AWS_ACCESS_KEY_ID"],
  AWS_SECRET_ACCESS_KEY: ENV["AWS_SECRET_ACCESS_KEY"]
}


# デプロイ処理が終わった後、Unicornを再起動するための記述
# after 'deploy:publishing', 'deploy:restart'
# namespace :deploy do
#   task :restart do
#     invoke 'unicorn:restart'
#   end

# master.key用のシンボリックリンクを追加
# set :linked_files, %w{ config/master.key }

#   desc 'upload master.key'
#   task :upload do
#     on roles(:app) do |host|
#       if test "[ ! -d #{shared_path}/config ]"
#         execute "mkdir -p #{shared_path}/config"
#       end
#       upload!('config/master.key', "#{shared_path}/config/master.key")
#     end
#   end
#   before :starting, 'deploy:upload'
#   after :finishing, 'deploy:cleanup'
# end