class AddOnlyOnceToAdoptions < ActiveRecord::Migration
  def change
   add_column :adoptions, :only_once, :boolean, default: true, null: false
  end
end
