class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.text :comment
      t.belongs_to :shipping_type, foreign_key: true
      t.decimal :shipping_cost

      t.timestamps
    end
  end
end
