class UsersController < ApplicationController

  def show
    @user_bidded_on_items = current_user.bids.map(&:item).uniq
  end

end
