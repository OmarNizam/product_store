class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer,default :amount
      t.boolean,default :ckecked_out

      t.timestamps
    end
  end
end
