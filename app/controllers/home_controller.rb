class HomeController < ApplicationController

  def index
    @events = Event.all

    @main_event = Event.all.first

    event_name = @main_event.name
    event_description = @main_event.description


  end

  def today
    @today= Time.now.midnight
    # @before_midnight = Time.now
    @today_event = Event.where(created_at: @today)
    # raise
  end

  def show
    # @event = Event.find_by(id: params['id'])


  end
end
