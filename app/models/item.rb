class Item < ActiveRecord::Base
  belongs_to :user

  has_many :bids

  private

  def self.current
    where("expiration_date > ?", Date.today)
  end
end
