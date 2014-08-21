class AddTrainCounterAndLastTimeTrainedWithToAdoptions < ActiveRecord::Migration
  def change
    add_column :adoptions, :last_time_trained_with, :datetime, default: "NOW()"
    add_column :adoptions, :train_counter, :integer, null: false, default: 0
  end
end
