class CreateCreates < ActiveRecord::Migration[5.2]
  def change
    create_table :creates do |t|
      t.string :Cart
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
