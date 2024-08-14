class CreateRailwayCompany < ActiveRecord::Migration[7.1]
  def change
    create_table :railway_companies do |t|
      t.integer :code
      t.string :name, null: false
      t.string :official_name
      t.string :short_name
      t.timestamps
    end
  end
end
