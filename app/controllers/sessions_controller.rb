class SessionsController < ApplicationController
    #this method render login form
    def new
    end

    # this method handles login process, authenticate and validate user and 
    # then allocate user's info to session object
    # then redirect user to coresponding paths
    def create
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password]) && user.status == "Active"
            session[:user_id] = user.id
            session[:fname] = user.fname
            session[:is_admin] = user.is_admin
            if session[:is_admin]
                flash[:notice] = "Logged in successfully!"
                redirect_to admin_path
              else
                flash[:notice] = "Logged in successfully!"
                redirect_to userhome_path
              end
        else  
            flash.now[:error] = "Invaild email or password. Please try again."
            render 'new'
        end
    end
    
    # this method clears all parameters from session object
    # rendering it null and redyesirects back to home page
    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out successfully!"
        redirect_to root_path
    end
end
