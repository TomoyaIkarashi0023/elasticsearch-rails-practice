# 駅テーブル
class RailwayStation < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  include Elasticsearch::Model::SearchMethod
  include Elasticsearch::Model::SearchConfig

  belongs_to :prefecture
  belongs_to :city
  has_many :railway_route_stations

  settings do
    mappings do
      indexes :location, type: :geo_point
    end
  end

  def location
    return unless railway_route_stations.first&.latitude && railway_route_stations.first&.longitude

    {
      lat: railway_route_stations.first.latitude,
      lon: railway_route_stations.first.longitude
    }
  end
end
