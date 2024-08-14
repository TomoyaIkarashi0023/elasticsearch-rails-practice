# 駅テーブル
class RailwayStation < ApplicationRecord
  belongs_to :prefecture
  belongs_to :city
end
