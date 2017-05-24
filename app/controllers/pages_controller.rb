class PagesController < ApplicationController

  def show
  end

  def staff_picks
    @events = Event.all
    @three_events = @events.sample(3)
  end

  def near_me
    event_locations = []
    user_ip = @current_user.ip_address

    Event.all.each do |i|
      event_locations.push(i.location)
    end

    @near_by_events = []
    event_locations.each do |i|
      distance = Geocoder::Calculations.distance_between(i, user_ip)
      if (distance < 1)
        @near_by_events.push([i.latitude.to_f, i.longitude.to_f])
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

end
