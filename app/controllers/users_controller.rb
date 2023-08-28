class UsersController < ApplicationController
  def show
  end
  
  def index
    @users = User.all
  end
  
  def update
    user = User.find(params[:id])
    user.update(list_params)
    redirect_to user_path(book.id)
  end

  def edit
    is_matching_login_user
    @user = User.find(params[:id])
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
  def is_matching_login_user
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to post_images_path
    end
  end
end
