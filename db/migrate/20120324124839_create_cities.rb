class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :postal_code
      t.integer :id_country

      t.timestamps
    end
  end
  
  def down
    drop_table :cities
  end
end
