class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.belongs_to :product, foreign_key: true
      t.decimal :unit_price
      t.integer :quantity
      t.belongs_to :order, foreign_key: true
      t.string :item_name

      t.timestamps
    end
  end
end
