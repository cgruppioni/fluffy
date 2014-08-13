class AddMoneyOwedAndFeedingCounterToAdoptions < ActiveRecord::Migration
  def change
    add_column :adoptions, :money_owed, :decimal, null: false, default: 0, precision: 8, scale: 2
    add_column :adoptions, :feed_counter, :integer, null: false, default: 0
  end
end
