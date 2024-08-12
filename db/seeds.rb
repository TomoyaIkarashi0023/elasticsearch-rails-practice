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

prefectures = [
  { name: '北海道', slug: 'hokkaido', hiragana: 'ほっかいどう', katakana: 'ホッカイドウ', latlng: '43.06417,141.34694' },
  { name: '青森県', slug: 'aomori', hiragana: 'あおもりけん', katakana: 'アオモリケン', latlng: '40.82444,140.74' },
  { name: '岩手県', slug: 'iwate', hiragana: 'いわてけん', katakana: 'イワテケン', latlng: '39.70361,141.1525' },
  { name: '宮城県', slug: 'miyagi', hiragana: 'みやぎけん', katakana: 'ミヤギケン', latlng: '38.26889,140.87194' },
  { name: '秋田県', slug: 'akita', hiragana: 'あきたけん', katakana: 'アキタケン', latlng: '39.71861,140.1025' },
  { name: '山形県', slug: 'yamagata', hiragana: 'やまがたけん', katakana: 'ヤマガタケン', latlng: '38.24056,140.36333' },
  { name: '福島県', slug: 'fukushima', hiragana: 'ふくしまけん', katakana: 'フクシマケン', latlng: '37.75,140.46778' },
  { name: '茨城県', slug: 'ibaraki', hiragana: 'いばらきけん', katakana: 'イバラキケン', latlng: '36.34139,140.44667' },
  { name: '栃木県', slug: 'tochigi', hiragana: 'とちぎけん', katakana: 'トチギケン', latlng: '36.56583,139.88361' },
  { name: '群馬県', slug: 'gunma', hiragana: 'ぐんまけん', katakana: 'グンマケン', latlng: '36.39111,139.06083' },
  { name: '埼玉県', slug: 'saitama', hiragana: 'さいたまけん', katakana: 'サイタマケン', latlng: '35.85694,139.64889' },
  { name: '千葉県', slug: 'chiba', hiragana: 'ちばけん', katakana: 'チバケン', latlng: '35.60472,140.12333' },
  { name: '東京都', slug: 'tokyo', hiragana: 'とうきょうと', katakana: 'トウキョウト', latlng: '35.68944,139.69167' },
  { name: '神奈川県', slug: 'kanagawa', hiragana: 'かながわけん', katakana: 'カナガワケン', latlng: '35.44778,139.6425' },
  { name: '新潟県', slug: 'niigata', hiragana: 'にいがたけん', katakana: 'ニイガタケン', latlng: '37.90222,139.02361' },
  { name: '富山県', slug: 'toyama', hiragana: 'とやまけん', katakana: 'トヤマケン', latlng: '36.69528,137.21139' },
  { name: '石川県', slug: 'ishikawa', hiragana: 'いしかわけん', katakana: 'イシカワケン', latlng: '36.59444,136.62556' },
  { name: '福井県', slug: 'fukui', hiragana: 'ふくいけん', katakana: 'フクイケン', latlng: '36.06528,136.22194' },
  { name: '山梨県', slug: 'yamanashi', hiragana: 'やまなしけん', katakana: 'ヤマナシケン', latlng: '35.66389,138.56833' },
  { name: '長野県', slug: 'nagano', hiragana: 'ながのけん', katakana: 'ナガノケン', latlng: '36.65139,138.18111' },
  { name: '岐阜県', slug: 'gifu', hiragana: 'ぎふけん', katakana: 'ギフケン', latlng: '35.39111,136.72222' },
  { name: '静岡県', slug: 'shizuoka', hiragana: 'しずおかけん', katakana: 'シズオカケン', latlng: '34.97694,138.38306' },
  { name: '愛知県', slug: 'aichi', hiragana: 'あいちけん', katakana: 'アイチケン', latlng: '35.18028,136.90667' },
  { name: '三重県', slug: 'mie', hiragana: 'みえけん', katakana: 'ミエケン', latlng: '34.73028,136.50861' },
  { name: '滋賀県', slug: 'shiga', hiragana: 'しがけん', katakana: 'シガケン', latlng: '35.00444,135.86833' },
  { name: '京都府', slug: 'kyoto', hiragana: 'きょうとふ', katakana: 'キョウトフ', latlng: '35.02139,135.75556' },
  { name: '大阪府', slug: 'osaka', hiragana: 'おおさかふ', katakana: 'オオサカフ', latlng: '34.68639,135.52' },
  { name: '兵庫県', slug: 'hyogo', hiragana: 'ひょうごけん', katakana: 'ヒョウゴケン', latlng: '34.69139,135.18306' },
  { name: '奈良県', slug: 'nara', hiragana: 'ならけん', katakana: 'ナラケン', latlng: '34.68528,135.83278' },
  { name: '和歌山県', slug: 'wakayama', hiragana: 'わかやまけん', katakana: 'ワカヤマケン', latlng: '34.22611,135.1675' },
  { name: '鳥取県', slug: 'tottori', hiragana: 'とっとりけん', katakana: 'トットリケン', latlng: '35.50361,134.23833' },
  { name: '島根県', slug: 'shimane', hiragana: 'しまねけん', katakana: 'シマネケン', latlng: '35.47222,133.05056' },
  { name: '岡山県', slug: 'okayama', hiragana: 'おかやまけん', katakana: 'オカヤマケン', latlng: '34.66167,133.935' },
  { name: '広島県', slug: 'hiroshima', hiragana: 'ひろしまけん', katakana: 'ヒロシマケン', latlng: '34.39639,132.45944' },
  { name: '山口県', slug: 'yamaguchi', hiragana: 'やまぐちけん', katakana: 'ヤマグチケン', latlng: '34.18583,131.47139' },
  { name: '徳島県', slug: 'tokushima', hiragana: 'とくしまけん', katakana: 'トクシマケン', latlng: '34.06583,134.55944' },
  { name: '香川県', slug: 'kagawa', hiragana: 'かがわけん', katakana: 'カガワケン', latlng: '34.34028,134.04333' },
  { name: '愛媛県', slug: 'ehime', hiragana: 'えひめけん', katakana: 'エヒメケン', latlng: '33.84167,132.76611' },
  { name: '高知県', slug: 'kochi', hiragana: 'こうちけん', katakana: 'コウチケン', latlng: '33.55972,133.53111' },
  { name: '福岡県', slug: 'fukuoka', hiragana: 'ふくおかけん', katakana: 'フクオカケン', latlng: '33.60639,130.41806' },
  { name: '佐賀県', slug: 'saga', hiragana: 'さがけん', katakana: 'サガケン', latlng: '33.24944,130.29889' },
  { name: '長崎県', slug: 'nagasaki', hiragana: 'ながさきけん', katakana: 'ナガサキケン', latlng: '32.74472,129.87361' },
  { name: '熊本県', slug: 'kumamoto', hiragana: 'くまもとけん', katakana: 'クマモトケン', latlng: '32.78972,130.74167' },
  { name: '大分県', slug: 'oita', hiragana: 'おおいたけん', katakana: 'オオイタケン', latlng: '33.23806,131.6125' },
  { name: '宮崎県', slug: 'miyazaki', hiragana: 'みやざきけん', katakana: 'ミヤザキケン', latlng: '31.91111,131.42389' },
  { name: '鹿児島県', slug: 'kagoshima', hiragana: 'かごしまけん', katakana: 'カゴシマケン', latlng: '31.56028,130.55806' },
  { name: '沖縄県', slug: 'okinawa', hiragana: 'おきなわけん', katakana: 'オキナワケン', latlng: '26.2125,127.68111' }
]

prefectures.each do |prefecture|
  Prefecture.create!(prefecture)
end

ordinance_designated_cities =[
  { 'prefecture_id'=>13, 'name'=>'23区', 'slug'=>'23ku' },
  { 'prefecture_id'=>13, 'name'=>'23区以外', 'slug'=>'23kuigai' },
  { 'prefecture_id'=>1, 'name'=>'札幌市', 'slug'=>'sapporoshi' },
  { 'prefecture_id'=>4, 'name'=>'仙台市', 'slug'=>'sendaishi' },
  { 'prefecture_id'=>11, 'name'=>'さいたま市', 'slug'=>'saitamashi' },
  { 'prefecture_id'=>12, 'name'=>'千葉市', 'slug'=>'chibashi' },
  { 'prefecture_id'=>14, 'name'=>'横浜市', 'slug'=>'yokohamashi' },
  { 'prefecture_id'=>14, 'name'=>'川崎市', 'slug'=>'kawasakishi' },
  { 'prefecture_id'=>14, 'name'=>'相模原市', 'slug'=>'sagamiharashi' },
  { 'prefecture_id'=>15, 'name'=>'新潟市', 'slug'=>'niigatashi' },
  { 'prefecture_id'=>22, 'name'=>'静岡市', 'slug'=>'shizuokashi' },
  { 'prefecture_id'=>22, 'name'=>'浜松市', 'slug'=>'hamamatsushi', },
  { 'prefecture_id'=>23, 'name'=>'名古屋市', 'slug'=>'nagoyashi' },
  { 'prefecture_id'=>26, 'name'=>'京都市', 'slug'=>'kyotoshi' },
  { 'prefecture_id'=>27, 'name'=>'大阪市', 'slug'=>'osakashi' },
  { 'prefecture_id'=>27, 'name'=>'堺市', 'slug'=>'sakaishi' },
  { 'prefecture_id'=>28, 'name'=>'神戸市', 'slug'=>'kobeshi' },
  { 'prefecture_id'=>33, 'name'=>'岡山市', 'slug'=>'okayamashi' },
  { 'prefecture_id'=>34, 'name'=>'広島市', 'slug'=>'hiroshimashi' },
  { 'prefecture_id'=>40, 'name'=>'北九州市', 'slug'=>'kitakyushushi' },
  { 'prefecture_id'=>40, 'name'=>'福岡市', 'slug'=>'fukuokashi' },
  { 'prefecture_id'=>43, 'name'=>'熊本市', 'slug'=>'kumamotoshi' },
]

ordinance_designated_cities.each do |city|
  OrdinanceDesignatedCity.create!(city)
end
