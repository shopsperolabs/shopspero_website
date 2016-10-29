class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :on_sale
      t.integer :stock
      t.integer :size
      t.string :color
      t.string :line
      t.decimal :price, precision: 8, scale: 2
      t.text :description

      t.timestamps null: false
    end
  end
end
