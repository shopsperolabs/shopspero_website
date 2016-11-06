class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :address
      t.datetime :ordered_at
      t.datetime :updated_at
      t.datetime :expire_time
      t.decimal :price
    end
  end
end
