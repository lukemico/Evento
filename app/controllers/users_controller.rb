class UsersController < ApplicationController
  before_action :check_if_logged_out, only:[:new, :create]

  before_action :check_if_logged_in, only: [:edit, :update, :show]

  before_action :check_if_same_user, only: [:show, :edit]

  def index
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params())
    if @user.save
      session[:user_id] = @user.id
      redirect_to(root_path())
    else
      render :new
    end
  end

  # GET /users
  def index
  end

  # GET /users/1
  def show
    @user = User.find_by(id: params["id"])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find_by id: params[ "id"]
  end

  # PATCH/PUT /users/1
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def user_params
    params.require(:user).permit(:first_name, :last_name,
    :email, :dob, :phone_number, :password, :password_confirmation)
  end

  def check_if_logged_out
    if(@current_user)
      flash[:error] = "You are already logged in."
      redirect_to(user_path(session[:user_id]))
    end 
  end

  def check_if_logged_in
    if(!@current_user)
      flash[:error] = "You need to be logged in."
      redirect_to("/login")
    end
  end

  def check_if_same_user
    if(@current_user.id != params["id"].to_i)
      flash[:error] = "You cannot visit that page."
      redirect_to(user_path(@current_user))
    end
  end
  
end
