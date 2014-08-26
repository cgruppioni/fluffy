class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :stripe_customer_token, null: false, default: ""
      t.integer :credits, null: false, default: 0
      t.belongs_to :user, null: false, index: true

      t.timestamps
    end
  end
end
