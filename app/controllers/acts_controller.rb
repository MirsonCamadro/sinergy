class ActsController < ApplicationController

    def index
        acts = Act.all
        @user = current_user    
    end

    def show
        @act = Act.find(params[:id])
    end

    
end
