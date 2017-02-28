class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
    else
      render "new"
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update_attributes(user_params)
    if @user.save
      redirect_to user_path(current_user)
    else
      render "edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :regions)
  end
end
