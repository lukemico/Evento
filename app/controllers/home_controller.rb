class HomeController < ApplicationController

  def index
    @events = Event.all
    @three_events = @events.sample(3)
    @main_event = Event.all.sample()
  end

  def show

  end


end
