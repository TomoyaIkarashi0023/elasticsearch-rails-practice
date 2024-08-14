# 駅テーブル
class RailwayStation < ApplicationRecord
  belongs_to :prefecture
  belongs_to :city
  has_many :railway_route_stations
end
