# 駅 x 路線の中間テーブル
class RailwayRouteStation < ApplicationRecord
  belongs_to :railway_route
  belongs_to :railway_station
end
