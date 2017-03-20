class UserEventsController < ApplicationController

  def create
    # byebug
    event = Event.find(params[:id])
    @user = current_user
    current_user.events << event
    # hours = 0
    # goals = current_user.goals
    @user.update(hours: (@user.hours + event.hours))
    #
    # current_user.events.each do |event|
    #   h = ((event.end_time - event.start_time) / 3600).to_i
    #   hours += h
    #   current_user.hours += h
    #   current_user.update_attributes(hours: h)
    # end
    redirect_to organization_path(event.organization)
  end
end
