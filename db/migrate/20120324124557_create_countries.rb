class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name

      t.timestamps
    end
  end
  def down
    drop_table :countries
  end
end
