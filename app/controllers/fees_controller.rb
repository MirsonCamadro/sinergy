class FeesController < ApplicationController
    before_action :authenticate_user!

    def index
        @user = current_user
<<<<<<< HEAD
        users = User.all
        @fees = users.fees
=======
>>>>>>> development
    end
    
    
end
