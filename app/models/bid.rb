class Bid < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  validate :new_highest_bid


  def new_highest_bid
    if (amount < current_highest_bid)
      errors.add(:amount, "Your bid must be higher than $#{current_highest_bid}")
    end
  end

  def current_highest_bid
    if item.bids.count == 0
      item.minimum_price
    else
      item.bids.maximum("amount")
    end
  end
end
