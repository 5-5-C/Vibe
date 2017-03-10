class OrganizationsController < ApplicationController


  def index
    @organizations = Organization.all

    # @organization = Organization.find(params[:id])
  end

  def show
    @organization = Organization.find(params[:id])
    @events = @organization.events
    @users = User.all
    @location = @organization.location
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    @organization.user = current_user
    if @organization.save
      redirect_to organizations_path
    else
      render "new"
    end
  end

  private
  def organization_params
    params.require(:organization).permit(:user_id, :name, :description, :location)
  end
end
