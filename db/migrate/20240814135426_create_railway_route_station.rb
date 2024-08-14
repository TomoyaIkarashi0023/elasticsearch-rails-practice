class CreateRailwayRouteStation < ActiveRecord::Migration[7.1]
  def change
    create_table :railway_route_stations do |t|
      t.bigint :railway_route_id, null: false
      t.bigint :railway_station_id, null: false
      t.integer :code, null: false
      t.string :name, null: false
      t.string :address
      t.decimal :latitude, precision: 9, scale: 7, null: false
      t.decimal :longitude, precision: 10, scale: 7, null: false
      t.timestamps
    end
  end
end
