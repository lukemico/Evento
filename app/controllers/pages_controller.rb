class PagesController < ApplicationController

  def near_me
    nearby_locations = Location.near(@current_user.address, 10).joins(:events)

    @near_by_events = []
    future_events_only = nearby_locations.map do |l|
      l.events.where("date >= '#{Time.now}'").each do |e|
        @near_by_events.push([l.latitude, l.longitude])
      end
    end
  end

  def today
    @events = Event.all
    @today= Time.now.midnight
    @today_events = Event.where(date: @today)
  end

  def this_week
    events = Event.all
    t = Time.now.midnight
    next_week = Time.now + 7.days

    @week_events = Event.where( "date >= ? AND date <= ?", t, next_week)
  end

  def this_month
    events = Event.all
    t = Time.now.midnight
    next_month = Time.now + 30.days

    @month_events = Event.where( "date >= ? AND date <= ?", t, next_month)
  end

  def search_events
    input = params["post_code"]
    near_by_locations = Location.near("#{input}, Australia", 5).joins(:events)
    @events = near_by_locations.map do |e|
      e.events
    end
    
    raise "hell"
  end
end
