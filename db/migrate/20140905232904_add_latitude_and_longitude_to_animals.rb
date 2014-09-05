class AddLatitudeAndLongitudeToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :latitude, :string
    add_column :animals, :longitude, :string
  end
end
