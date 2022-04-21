class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name

      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
