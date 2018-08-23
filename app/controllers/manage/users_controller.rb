class Manage::UsersController < ApplicationController
    before_action :require_admin?

    layout 'layouts/manage'

    def index
        @users = User.find_each
    end
end
