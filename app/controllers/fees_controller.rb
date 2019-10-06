class FeesController < ApplicationController
    before_action :authenticate_user!

    def index
        @user = current_user
        @fee = current_user.fees
    end
    
    
end
