class Prefecture < ApplicationRecord
  has_many :cities
  has_many :ordinance_designated_cities
end
