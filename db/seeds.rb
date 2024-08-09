# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

products = [
  { name: 'モップ', price: 1000 },
  { name: 'ちりとり', price: 500 },
  { name: 'ハンディ掃除機', price: 5000 },
  { name: 'コードレス掃除機', price: 8000 },
  { name: 'キャニスター掃除機', price: 7000 },
  { name: 'ロボット掃除機', price: 20000 },
  { name: '電子レンジ', price: 15000 },
  { name: 'オーブントースター', price: 9000 },
  { name: 'モニタースピーカー', price: 90000 },
  { name: '冷蔵庫', price: 50000 },
  { name: '冷凍庫', price: 40000 }
]

products.each do |product|
  Product.create!(product)
end
