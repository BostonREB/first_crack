class UsersController < ApplicationController

  def show
    @user_auction_items = current_user.items.current
    @user_bidded_on_items = current_user.bids.map(&:item).uniq
  end

end
