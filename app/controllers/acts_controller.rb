class ActsController < ApplicationController

    def index
        acts = Act.all
        @user = current_user    
    end

    
end
