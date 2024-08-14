class OrdinanceDesignatedCity < ApplicationRecord
  belongs_to :prefecture
  has_many :cities
end
