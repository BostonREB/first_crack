class BidsController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @bid = @item.bids.create(bid_params)
    if @bid.valid?
      redirect_to @item
    else
      render "items/show"
    end
  end

  private

  def bid_params
    params.require(:bid).
    permit(:amount).
    merge(user_id: current_user.id)
  end

end
