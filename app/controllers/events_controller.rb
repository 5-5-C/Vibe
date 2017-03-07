class EventsController < ApplicationController

  before_action do
    @organization = Organization.find(params[:organization_id])
  end

  def index
    @events = @organization.events
  end

  def show
  end

  def new
    @event = Event.new

  end

  def create
    @event = Event.new(event_params)
    @event.organization = @organization


      if @event.save
        redirect_to organization_path(@organization)
      else
        render 'new'
      end
    end





  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to organizations_url
  end




  private

  def event_params
    params.require(:event).permit(:user_id, :organization_id, :event_size, :date, :name, :description, :location)
  end

  # def load_organization
  #   @organization = Organization.find(params[:organization_id])
  # end

end




# t.string   "name"
# t.string   "description"
# t.date     "date"
# t.string   "location"
#
#
