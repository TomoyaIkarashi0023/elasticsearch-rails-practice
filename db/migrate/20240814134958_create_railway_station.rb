class CreateRailwayStation < ActiveRecord::Migration[7.1]
  def change
    create_table :railway_stations do |t|
      t.integer :code, null: false
      t.string :name, null: false
      t.bigint :prefecture_id, null: false
      t.bigint :city_id, null: false
      t.timestamps
    end
  end
end
