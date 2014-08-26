class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :role, null: false
      t.string :name, null: false
      t.string :address, default: ""
      t.string :phone_number, default: ""
      t.string :facility_type, default: ""
      t.text :description, default: ""
      t.string :primary_contact, default: ""
      t.float :latitude, default: ""
      t.float :longitude, default: ""
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :address
    add_index :users, [:name, :address], unique: true
    add_index :users, :role
  end
end
