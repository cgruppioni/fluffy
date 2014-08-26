class AddInteractionStatusToAdoptions < ActiveRecord::Migration
  def change
    add_column :adoptions, :positive_interaction_status, :boolean, default: true, null: false
  end
end
