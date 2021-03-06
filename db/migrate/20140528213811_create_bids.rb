class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.belongs_to :user, index: true
      t.belongs_to :item, index: true
      t.integer :amount, default: 0

      t.timestamps
    end
  end
end
