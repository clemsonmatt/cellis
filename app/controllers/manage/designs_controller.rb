class Manage::DesignsController < ApplicationController
    before_action :require_admin?

    layout 'layouts/manage'

    def index
        @designs = Design.find_each
    end

    def new
    end

    def create
    end
end
