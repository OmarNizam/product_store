class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :amount, default:1
      t.boolean :ckecked_out, default:false

      t.timestamps
    end
  end
end
