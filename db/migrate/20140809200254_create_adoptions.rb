class CreateAdoptions < ActiveRecord::Migration
  def change
    create_table :adoptions do |t|
      t.belongs_to :user, null: false
      t.belongs_to :animal, null: false
      t.integer :score, null: false, default: 50
      t.integer :level, null: false, default: 1
      t.decimal :money_owed, null: false, default: 0, precision: 8, scale: 2
      t.integer :feed_counter, null: false, default: 0

      t.timestamps
    end
    add_index :adoptions, :user_id, unique: true
    add_index :adoptions, :animal_id, unique: true
  end
end
