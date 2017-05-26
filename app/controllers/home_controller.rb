class HomeController < ApplicationController

  def index
    @events = Event.all
    @three_events = @events.sample(3)
    main_event = Event.all.sample(15)
    @images = []
    main_event.each do |m|
      @images.push([m.image, m.name, m.id])
    end
  end
end
