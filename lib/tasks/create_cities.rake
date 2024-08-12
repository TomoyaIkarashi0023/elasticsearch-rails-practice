require 'csv'
# bundle exec rake create_cities
task create_cities: :environment do
  CSV.foreach('lib/tasks/import_data/import_cities.csv', headers: true) do |row|
    City.create(
      prefecture_id: row['prefecture_id'],
      ordinance_designated_city_id: row['ordinance_designated_city_id'],
      name: row['name'],
      slug: row['slug'],
      jis_code: row['jis_code'],
      bounding_box: row['bounding_box'],
    )
  end
end
