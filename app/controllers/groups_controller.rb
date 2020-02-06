class GroupsController < ApplicationController
  def index
    @groups = Group.all
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
    @resume = Resume.find(params[:id])
  end
  private

  def group_params
    params.require(:group).permit(:name, user_ids: [] )
  end
  
  def resume_update
    params.require(:resume).permit(:resume_name).merge(gorup_id: current_user.group.id)
  end
end
