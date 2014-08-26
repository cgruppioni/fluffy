class AddLastTimeFedToAdoptions < ActiveRecord::Migration
  def change
    add_column :adoptions, :last_time_fed, :datetime, default: "NOW()"
  end
end
