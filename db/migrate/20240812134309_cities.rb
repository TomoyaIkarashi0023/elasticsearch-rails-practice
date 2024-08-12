class Cities < ActiveRecord::Migration[7.1]
  def change
    create_table :cities do |t|
      t.bigint :prefecture_id, null: false
      t.bigint :ordinance_designated_city_id
      t.string :name, null: false
      t.string :slug, null: false
      t.string :jis_code, null: false
      t.string :bounding_box
      t.timestamps
    end
  end
end
