class ProfilesController < ApplicationController
    before_action :require_logged_in?

    def index
    end

    def edit
    end

    def update
        if @user.update(allowed_parameters)
            flash.now.alert = 'Profile saved'
            redirect_to profile_path
        else
            flash.now.alert = 'Invalid credentials'
            render :edit
        end
    end

    private

    def allowed_parameters
        params.require(:user).permit(:email, :first_name, :last_name, :phone)
    end
end
