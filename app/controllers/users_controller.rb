class UsersController < ApplicationController
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
end