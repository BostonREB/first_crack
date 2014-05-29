class BidsController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @bid = @item.bids.create(bid_params)
    redirect_to @item
  end

  private

  def bid_params
    params.require(:bid).
    permit(:amount).
    merge(user_id: current_user.id)
  end

end
