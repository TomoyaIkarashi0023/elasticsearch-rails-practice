class CreateRailwayRoute < ActiveRecord::Migration[7.1]
  def change
    create_table :railway_routes do |t|
      t.bigint :railway_company_id, null: false
      t.integer :code, null: false
      t.string :name, null: false
      t.string :official_name
      t.timestamps
    end
  end
end
