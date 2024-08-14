# 駅テーブル
class RailwayStation < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  include Elasticsearch::Model::SearchMethod
  include Elasticsearch::Model::SearchConfig

  belongs_to :prefecture
  belongs_to :city
  has_many :railway_route_stations
end
