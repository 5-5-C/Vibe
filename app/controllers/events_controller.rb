class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    event = Event.new(user_params)
    event.user = Event.find(session[:event_id])
    event = Event.find(event[:event][:event_id])
    if
      event.save
      redirect_to event.save
      redirect_to user_path(reservation.user)
    elsif
      event.time_slots < remain_time_slots([:event][:date], params[:event][:date])
    else
      redirect_to event_path(params[:event][:event_id])
    end
  end

  def show
    @event = event.new
  end

  def edit
    @event = current_event
  end

  def destroy
    @event = current_event
  end



  private

  def user_params
    params.require(:event).permit(:name, :description, :date, :location)
  end
end



# t.string   "name"
# t.string   "description"
# t.date     "date"
# t.string   "location"
#
#
