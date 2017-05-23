class SessionController < ApplicationController
  before_action :authorise, only: [:new]

  def new
  end

  def create
    email = params["email"]
    password = params["password"]
    user = User.find_by(email: email)

    # user_ip = request.remote_ip
    if(user.present? && user.authenticate(password))

      # if user.ip_address != user_ip || user.ip_address.empty?
        # search by IP if user is present - and get first result
        # user_location = Geocoder.search( user_ip )[0]

        # Assign the user the latitude and longitude returned

        # user.latitude = user_location.latitude
        # user.longitude = user_location.longitude
      # end

      session[:user_id] = user.id
      redirect_to(root_path())
    else
      flash[:login_error] = "The password or email was incorrect."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to("/login")
  end

  private
  def authorise
    if(@current_user)
      flash[:error] = "You are already logged in."
      redirect_to(user_path(@current_user.id))
    end
  end

end
