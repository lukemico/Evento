class HomeController < ApplicationController

  def index
    @events = Event.all

    @main_event = Event.all.first

    event_name = @main_event.name
    event_description = @main_event.description
  end

  def show

  end

end
