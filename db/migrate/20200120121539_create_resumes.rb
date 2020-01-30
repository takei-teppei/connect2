class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.string :resume_name,null: false
      t.string :fullname,null: false
      t.string :name_kana,null: false
      t.string :gender,null: false
      t.string :address_kana,null: false
      t.string :birthday,null: false
      t.string :submit_date
      t.string :post_code,null: false
      t.string :perfectures,null: false
      t.string :build,null: false
      t.string :tel,null: false
      t.string :cellphone,null: false
      t.string :e_mail,null: false
      t.string :e_y
      t.string :e_m
      t.string  :education_j
      t.string :e_y2
      t.string :e_m2
      t.string  :education2_j
      t.string :e_y3
      t.string :e_m3
      t.string  :education3_h
      t.string :e_y4
      t.string :e_m4
      t.string  :education4_h
      t.string :e_y5
      t.string :e_m5
      t.string  :education5_c
      t.string :e_y6
      t.string :e_m6
      t.string  :education6_c
      t.string :a_y
      t.string :a_m
      t.string  :award
      t.string :a_y2
      t.string :a_m2
      t.string  :award2
      t.string :a_y3
      t.string :a_m3
      t.string  :award3
      t.string :a_y4
      t.string :a_m4
      t.string  :award4
      t.string :a_y5
      t.string :a_m5
      t.string  :award5
      t.string :a_y6
      t.string :a_m6
      t.string  :award6
      t.string :l_y
      t.string :l_m
      t.string  :license
      t.string :l_y2
      t.string :l_m2
      t.string  :license2
      t.string :l_y3
      t.string :l_m3
      t.string  :license3
      t.string :l_y4
      t.string :l_m4
      t.string  :license4
      t.string :l_y5
      t.string :l_m5
      t.string  :license5
      t.text    :free_message,null: false
      t.text    :motivation,null: false
      t.string :password_digest
      t.string :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
