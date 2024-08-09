class Product < ApplicationRecord
  include Elasticsearch::Model
  settings do
    mappings dynamic: 'false' do
      indexes :name, type: 'text'
      indexes :price, type: 'integer'
    end
  end
end
