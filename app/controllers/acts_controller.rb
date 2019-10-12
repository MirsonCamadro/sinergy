class ActsController < ApplicationController

    def index
        acts = Act.all    
    end

    
end
