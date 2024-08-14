require 'csv'
# bundle exec rake create_railway_data
task create_railway_data: :environment do
  CSV.foreach('lib/tasks/import_data/import_railway_companies.csv', headers: true) do |row|
    RailwayCompany.create(
      code: row['code'],
      name: row['name'],
      official_name: row['official_name'],
      short_name: row['short_name'],
    )
  end

  CSV.foreach('lib/tasks/import_data/import_railway_routes.csv', headers: true) do |row|
    RailwayRoute.create(
      railway_company_id: row['railway_company_id'],
      code: row['code'],
      name: row['name'],
      official_name: row['official_name'],
    )
  end

  CSV.foreach('lib/tasks/import_data/import_railway_stations.csv', headers: true) do |row|
    RailwayStation.create(
      code: row['code'],
      prefecture_id: row['prefecture_id'],
      name: row['name'],
      city_id: row['city_id'],
    )
  end

  CSV.foreach('lib/tasks/import_data/import_railway_route_stations.csv', headers: true) do |row|
    RailwayRouteStation.create(
      railway_route_id: row['railway_route_id'],
      railway_station_id: row['railway_station_id'],
      code: row['code'],
      name: row['name'],
      address: row['address'],
      latitude: row['latitude'],
      longitude: row['longitude'],
    )
  end
end
