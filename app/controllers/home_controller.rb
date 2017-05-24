class HomeController < ApplicationController

  def index
    @events = Event.all
    @three_events = @events.sample(3)
    @main_event = Event.all.first
  end

  def show

  end


end
