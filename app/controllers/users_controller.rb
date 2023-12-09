class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # ensure only new&create function can be called before user login
  before_action :require_login, except: [:new, :create]

  # GET /users or /users.json
  def index
    #@users = User.all
    # check whether the user is admin, retrieve all users if so.
    if logged_in? && is_administrator?
      @users = User.all

    # redirect user to userhome page if not admin  
    elsif logged_in? && !is_administrator?
      redirect_to userhome_path

    # show error message if not logged in and redirect to login page 
    else
      flash[:error] = "You are not authorised to access this resource"
      redirect_to login_path 
    end
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
  
    respond_to do |format|
      if !@user.save
        flash.now[:alert] = "Sign up failed. The email is already in use. Please choose a different email."
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      else
        format.html { redirect_to login_path, notice: "Sign up successful. Please log in." }
        format.json { render :show, status: :created, location: @user }
      end
    end
  end
  

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:fname, :lname, :email, :password, :is_admin, :status)
    end
end
