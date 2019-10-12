class FeesController < ApplicationController
    before_action :authenticate_user!

    def index
        @user = current_user
        users = User.all
        @fees = users.fees
    end
    
    
end
