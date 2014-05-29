class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :user, index: true
      t.text :description
      t.string :image
      t.date :expiration_date
      t.integer :minimum_price

      t.timestamps
    end
  end
end
