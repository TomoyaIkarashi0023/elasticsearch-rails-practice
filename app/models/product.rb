class Product < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  include Elasticsearch::Model::SearchMethod
  include Elasticsearch::Model::SearchConfig

  settings do
    mappings dynamic: 'false' do
      indexes :name, type: 'text'
      indexes :price, type: 'integer'
    end
  end
end
