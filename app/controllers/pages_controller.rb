class PagesController < ApplicationController

  def show
  end


  def staff_picks
  end

  def near_me
    @users = User.all
    @event = Event.all
  # Hotel.near(”Vancouver, Canada”)
  # find hotels near Vancouver
  # @event.nearbys
  # find other events near @event
    # raise
  @user_lat = User.latitude
  @user_lon = User.longitude

  @nearby = restaurants.nearby
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
