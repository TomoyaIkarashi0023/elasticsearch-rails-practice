class City < ApplicationRecord
  include Elasticsearch::Model
  settings do
    mappings dynamic: 'false' do
      indexes :prefecture_id, type: 'integer'
      indexes :ordinance_designated_city_id, type: 'integer'
      indexes :name, type: 'text'
      indexes :slug, type: 'text'
    end
  end
end
