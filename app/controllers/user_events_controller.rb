class UserEventsController < ApplicationController

  def create
    event = Event.find(params[:id])
    current_user.events << event
    redirect_to organization_path(event.organization)


  end

end
