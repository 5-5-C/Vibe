class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to root_url

    else
      render "new"
    end
  end

  private
  def organization_params
    params.require(:organization).permit(:organization_id, :name, :description, :location, :volunteer_position)
  end
end
