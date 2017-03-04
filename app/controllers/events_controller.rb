class EventsController < ApplicationController

  def new
    @events = Event.new

  end

  def create
    event = Event.new(events_params)
    event.user = Event.find(session[:user_id])
    event = Event.find(parans[:event][organizatons_id])
    if event.party_size < organization.remain_spot_search(params[:event][:date], params[:event][:organization])
      if event.save
        redirect_to user_parth(event.user)
      else
        redirect_to event_path(params[:event][:organization_id])
      end
    else
      flash[:error] = 'Sorry, this event is full! Try another one!'
      redirect_to event_parth(params[:event][:organization_id])
    end
  end

  def show
    @events = Event.new
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
    params.require(:event).permit(:user_id, :organization_id, :event_size, :date)
  end
end




# t.string   "name"
# t.string   "description"
# t.date     "date"
# t.string   "location"
#
#
