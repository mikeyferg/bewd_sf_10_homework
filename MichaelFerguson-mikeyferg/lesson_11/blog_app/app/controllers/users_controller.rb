class UsersController < ApplicationController


  def index
    @users = User.all
  end
  def show
    @user = current_user
    @blogs = @user.blogs
  end
end
