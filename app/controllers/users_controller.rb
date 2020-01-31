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

  private

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end
end