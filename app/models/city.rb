class City < ApplicationRecord
  belongs_to :prefecture
  belongs_to :ordinance_designated_city, optional: true
end
