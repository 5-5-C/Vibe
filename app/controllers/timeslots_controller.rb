class TimeslotsController < ApplicationController
  def index
    @timeslots = Timeslot.all
  end
  # 
  # def show
  #   @timeslots = Timeslot.new
  # end

  def new
    @timeslots = Timeslot.new
  end

  def create
    timeslot = Timeslot.new(timeslot_params)
    timeslot.user = User.find(session[:user_id])
    timeslot = Timeslot.find(params[:timeslot][:event_id])
    if timeslot.party_size < event.remain_seat_search(params[:event][:date], params[:event][:timeslot])
      if timeslot.save
          redirect_to user_path(timeslot.user)
      else
        redirect_to timeslot_path(params[:timeslot][:event_id])
      end

      else
        flash[:error] = "Sorry, this event is full!"
        redirect_to event_path(params[:timeslot][:event_id])
      end
  end

  def edit
    @timeslot = Timeslot.find(params[:id])
  end

  def update
  end

  def destroy
    @timeslot = Timeslot.find(params[:id])
    @timeslot.destroy
    redirect_to events_url
  end

  private
  def reservation_params
   params.require(:timeslot).permit(:event_size, :date, :event_id, :user_id, :event_time)
  end
end
