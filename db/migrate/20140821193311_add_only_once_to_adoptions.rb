class AddOnlyOnceToAdoptions < ActiveRecord::Migration
  def change
    add_column :adoptions, :only_once, :boolean, null: false, default: false
  end
end
