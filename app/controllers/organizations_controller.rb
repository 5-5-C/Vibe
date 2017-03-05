class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
    # @organization = Organization.find(params[:id])

  end

  def show
    @organization = Organization.find(params[:id])
    @events = @organization.events
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to organizations_path

    else
      render "new"
    end
  end

  private
  def organization_params
    params.require(:organization).permit(:organization_id, :name, :description, :location, :volunteer_position)
  end
end
