class AddGenderToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :gender, :string, null: false, default: ""
  end
end
