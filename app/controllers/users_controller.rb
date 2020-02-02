class UsersController < ApplicationController
  before_action :move_to_index, only: [:index,:done,:unedited]
  def index
    @resumes = current_user.resumes.includes(:user)
  end

  def show
    # @resumes = Resume.all
  end
  
  def done
    @resumes = current_user.resumes.includes(:user)
  end

  def unedited
    @resumes = current_user.resumes.includes(:user)
  end

  def search
    return nil if params[:keyword] == ""
    @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    respond_to do |format|
      format.html
      format.json
    end
  end
  private

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end
end