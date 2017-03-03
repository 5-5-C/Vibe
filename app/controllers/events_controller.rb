class EventsController < ApplicationController

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def destroy

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
