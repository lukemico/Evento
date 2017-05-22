class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def show
    @event = Event.find_by(id: params["id"])
  end

  def create
    cloudinary = Cloudinary::Uploader.upload(params["event"][ "image" ])
    event = Event.new(event_params())
    event.image = cloudinary["url"]
    event.save
    redirect_to(event_path(event))
  end
  
  def edit
    @event = Event.find_by(id: params["id"])
  end

  def update
    cloudinary = Cloudinary::Uploader.upload(params["event"][ "image" ])
    event = Event.find_by(id: params["id"])
    event.update(event_params())
    event.image = cloudinary["url"]
    event.save
  end
  
  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :cost, :description, :image, :location_id, :event_type_ids => [])
  end
end
