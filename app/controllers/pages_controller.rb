class PagesController < ApplicationController

  def show
  end


  def staff_picks
  end

  def near_me
  end

  def today
    @events = Event.all

    @today= Time.now.midnight

    @today_event = Event.where(date: @today)
  end

  def next_week

  end

  def next_month

  end

end
