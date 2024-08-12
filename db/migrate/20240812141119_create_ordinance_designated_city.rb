class CreateOrdinanceDesignatedCity < ActiveRecord::Migration[7.1]
  def change
    create_table :ordinance_designated_cities do |t|
      t.bigint :prefecture_id, null: false
      t.string :name, null: false
      t.string :slug, null: false
      t.timestamps
    end
  end
end
