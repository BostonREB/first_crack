class ItemsController < ApplicationController

  def index
    items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.create(item_params)
    redirect_to @item
  end

  def show
    @item = Item.find(params[:id])
    @bid = current_user.bids.new
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :description,
      :minimum_price,
      :expiration_date
      )
  end
end
