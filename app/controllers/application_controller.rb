class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :is_administrator?

    # retrieve current logged in user from the session object    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    # use the state return to determine whether the user has logged in or not
    def logged_in?
        !current_user.nil?
    end

    # check if the user is admin from session object
    def is_administrator?
        session[:is_admin]
    end

    # methods underneath private keyword remain private from being called outside controller 
    private
        # ensure the controller only accessible by logged-in users
        def require_login
            unless logged_in?
            flash[:error] = "You are not permitted to access this resource."
            redirect_to login_path
            end
        end
    
          
end
