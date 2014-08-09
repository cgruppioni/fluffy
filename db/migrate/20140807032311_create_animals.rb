class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.string :mammal_type, null: false
      t.integer :age, null: false
      t.string :breed, null: false
      t.string :personality, null: false
      t.text :biography, null: false
      t.belongs_to :user, index: true, null: false

      t.timestamps
    end
    add_index :animals, :mammal_type
  end
end
