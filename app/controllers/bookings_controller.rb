class BookingsController < ApplicationController
  def create
    user = User.find_by(id: @current_user.id)
    event_ids = []
    user.bookings.each do |b|
      event_ids.push(b.event_id)
    end
    if (event_ids.include?(params["event_id"].to_i))
      flash[:signup_error] = "You are already signedup to that event."
      redirect_to(user_path(@current_user.id))
    else
      booking = Booking.create({
        event_id: params["event_id"],
        user_id: @current_user.id
      })
      if (booking.save)
        flash[:success] = "You successfully signed up to the event"
        redirect_to(user_path(@current_user.id))
      end
    end
  end

  def delete
    booking = Booking.find_by(event_id: params["event_id"].to_i)
    booking.destroy
    redirect_to(user_path(@current_user.id))
  end


  private
  def booking_params
    params.require(:booking).permit(:event_id)
  end

end
