class GroupsController < ApplicationController
  def index
    @groups = current_user.groups.includes(:users)
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end

  def update
    @group.resume.update(resume_update)
  end

  def destroy
    @group = Group.find(params[:id])
    if @group.destroy
      redirect_to groups_path
    else
      redirect_to groups_path
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, user_ids: []) #resumeカラムに、見せたいユーザーのidを入れる。
  end
  
  def resume_update
    params.require(:resume).permit(:name).merge(gorup_id: current_user.group.id)
  end
end
