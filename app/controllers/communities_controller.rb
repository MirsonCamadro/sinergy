class CommunitiesController < ApplicationController
  before_action :authenticate_user!

  def index
      @user = current_user
  end
  
  
end
