class SessionController < ApplicationController
  before_action :authorise, only: [:new]
  
  def new
  end

  def create
    email = params["email"]
    password = params["password"]
    user = User.find_by(email: email)

    if(user.present? && user.authenticate(password))
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
