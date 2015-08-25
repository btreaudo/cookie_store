class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true
      t.references :brand, index: true, foreign_key: true
      t.text :description
      t.decimal :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
