class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :mammal_type
      t.integer :age
      t.string :breed
      t.string :adjective
      t.string :adjective2
      t.text :biography
      t.belongs_to :user, index: true
    end
    add_index :animals, :mammal_type
  end
end