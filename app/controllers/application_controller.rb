class ApplicationController < ActionController::Base
    private

    def logged_in?
        @user ||= User.find(session[:user_id]) if session[:user_id]

        if ! @user
            redirect_to login_path
        end
    end

    helper_method :logged_in?
end
