class HomeController < ApplicationController
  def index
    @events = Event.all
    @events = Event.order('created_at DESC').first(3)
  end
end
