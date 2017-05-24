class PagesController < ApplicationController

  def show
  end

  def staff_picks
  end
  def near_me
    event_locations = []
    # Get a user's location
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

    # raise "hell"
    # Compare to all events
    #   find any that are below threshold
    #
    #   for eaach that meets that => []

    # Geocoder::Calculations.distance_between( address1, address2 ) => Distance in mile





  #   @users = User.all
  #   @event = Event.all
  # # Hotel.near(”Vancouver, Canada”)
  # # find hotels near Vancouver
  # @event.nearbys
  # # find other events near @event
  #   # raise
  # @user_lat = User.latitude
  # @user_lon = User.longitude
  #
  # # @nearby = restaurants.nearby
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
