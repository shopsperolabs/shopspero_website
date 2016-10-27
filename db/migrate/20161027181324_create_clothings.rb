class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.on_sale :boolean
      t.integer :stock
      t.integer :size
      t.string :color
      t.string :line
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
  end
end
