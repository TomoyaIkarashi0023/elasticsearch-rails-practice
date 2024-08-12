class Prefecture < ApplicationRecord
  include Elasticsearch::Model
  settings do
    mappings dynamic: 'false' do
      indexes :name, type: 'text'
      indexes :slug, type: 'text'
    end
  end
end
