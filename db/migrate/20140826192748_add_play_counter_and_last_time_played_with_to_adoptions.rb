class AddPlayCounterAndLastTimePlayedWithToAdoptions < ActiveRecord::Migration
  def change
    add_column :adoptions, :last_time_played_with, :datetime, default: "NOW()"
    add_column :adoptions, :play_counter, :integer, null: false, default: 0
  end
end
