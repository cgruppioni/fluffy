class AddSleepCounterAndLastTimeSleptToAdoptions < ActiveRecord::Migration
  add_column :adoptions, :last_time_slept, :datetime, default: "NOW()"
  add_column :adoptions, :sleep_counter, :integer, null: false, default: 0
end
