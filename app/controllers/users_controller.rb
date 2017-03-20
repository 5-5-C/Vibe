class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events

  end

  def create
    @user = User.new(user_params)
    @user.hours = 0
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url
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

  def upload
    uploaded_io = params[:user][:picture]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :region, :volunteer_position, :summary, :date_of_birth, :picture, :hours, :org_admin, :skills, :goals, :skill1, :skill2, :skill3, :skill4, :skill5)
  end
end
