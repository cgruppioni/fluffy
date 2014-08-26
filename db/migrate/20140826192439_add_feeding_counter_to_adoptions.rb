class AddFeedingCounterToAdoptions < ActiveRecord::Migration
  def change
    add_column :adoptions, :feed_counter, :integer, null: false, default: 0
  end
end
