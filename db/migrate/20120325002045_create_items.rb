class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.references :order

      t.timestamps
    end
    add_index :items, :order_id
  end
  def self.down
    drop_table :items
  end
end
