class Prefecture < ApplicationRecord
  include Elasticsearch::Model

  has_many :cities
  has_many :ordinance_designated_cities

  settings do
    mappings dynamic: 'false' do
      indexes :name, type: 'text'
      indexes :slug, type: 'text'
    end
  end
end
