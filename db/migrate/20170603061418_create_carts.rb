class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :order_status_id

      t.timestamps
    end
  end
end
