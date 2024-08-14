# 路線テーブル
class RailwayRoute < ApplicationRecord
  belongs_to :railway_company
  has_many :railway_route_stations
end
