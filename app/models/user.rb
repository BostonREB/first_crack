class User < ActiveRecord::Base
  include Clearance::User

  has_many :items
  has_many :bids
end
