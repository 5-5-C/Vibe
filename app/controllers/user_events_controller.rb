class UserEventsController < ApplicationController

  def create
    event = Event.find(params[:id])
    current_user.events << event
    redirect_to organization_path(event.organization)
  end

  # def update
  #   user = User.find(params[:id])
  #   user.goal
  #   event.each do |@event|
  #     (start_time - end_time)
  #     add_to_user_goals
  #   end


  # end

end
