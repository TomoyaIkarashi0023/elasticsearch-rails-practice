# 鉄道会社テーブル
class RailwayCompany < ApplicationRecord
  has_many :railway_routes
end
