class EventsController < ApplicationController
  before_action :check_if_user_is_admin_or_logged_in, only: [:new, :edit, :create, :update, :delete ]

  def new
    @event = Event.new
  end

  def show
    @event = Event.find_by(id: params["id"])
    @num_of_ppl = @event.users.count()
    @location = @event.location
  end

  def create
    cloudinary = Cloudinary::Uploader.upload(params["event"][ "image" ])
    event = Event.new(event_params())
    event.image = cloudinary["url"]
    event.save
    redirect_to(event_path(event.id))
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

  private
  def event_params
    params.require(:event).permit(:name, :date, :cost, :description, :image, :location_id, :event_type_ids => [], location_attributes: [:state, :street, :street_number, :state, :postcode, :suburb])
  end

  def check_if_user_is_admin_or_logged_in
    if(!@current_user)
      flash[:error] = "You cannot view that page."
      redirect_to("/")
    elsif (!@current_user.is_admin == true)
      flash[:error] = "You cannot view that page."
      redirect_to("/")
    end
  end

end
