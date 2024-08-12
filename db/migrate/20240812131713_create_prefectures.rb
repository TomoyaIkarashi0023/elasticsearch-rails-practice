class CreatePrefectures < ActiveRecord::Migration[7.1]
  def change
    create_table :prefectures do |t|
      t.string :name
      t.string :slug
      t.string :hiragana
      t.string :katakana
      t.string :latlng
      t.timestamps
    end
  end
end
