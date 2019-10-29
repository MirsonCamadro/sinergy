class CommunitiesController < ApplicationController
  before_action :authenticate_user!

  def index
      @user = current_user
      @users = User.all
      @community = @user.community_id
      
      @unpayed_fees = User.unpayed_fees_by_community(current_user.community_id)
      @payed_fees = User.payed_fees_by_community(current_user.community_id)
      @total_payed_fees = @payed_fees.inject  {|sum, fee| sum + fee}
      @total_unpayed_fees = @unpayed_fees.inject  {|sum, fee| sum + fee}

      @expenses_values = @user.community.expenses.pluck('value')
      @total_expenses = @expenses_values.sum
      @available = @total_payed_fees - @total_expenses
    end
  
  
end
