class CreateOrderFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :order_foods do |t|
      t.references :food,  null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
