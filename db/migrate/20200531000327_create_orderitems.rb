class CreateOrderitems < ActiveRecord::Migration[5.2]
  def change
    create_table :orderitems do |t|
      t.references :order, foreign_key: true
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end
end
