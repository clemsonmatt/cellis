class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])

        if user and user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to profile_path
        else
            flash.now.alert = 'Invalid credentials'
            render :new
        end
    end

    def destroy
        session[:user_id] = nil

        redirect_to root_url
    end
end
