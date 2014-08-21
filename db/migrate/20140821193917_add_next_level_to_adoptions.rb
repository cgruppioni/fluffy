class AddNextLevelToAdoptions < ActiveRecord::Migration
  def change
    add_column :adoptions, :next_level, :integer, null: false, default: 500
  end
end
