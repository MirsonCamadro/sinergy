class CommunitiesController < ApplicationController
  before_action :authenticate_user!

  def index
      @user = current_user
      @users = User.all
      @community = @user.community_id
  end
  
  
end
