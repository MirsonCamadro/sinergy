class CommunitiesController < ApplicationController
  before_action :authenticate_user!

  def index
      @user = current_user
      @users = User.all
      @community = @user.community_id
      @unpayed_fees = User.unpayed_fees_by_community(current_user.community_id)
      @payed_fees = User.payed_fees_by_community(current_user.community_id)
  end
  
  
end
