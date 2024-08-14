Elasticsearch::Model.client = Elasticsearch::Client.new(
  host: 'http://elasticsearch:9200/',
)

module Elasticsearch::Model::SearchMethod
  extend ActiveSupport::Concern
  included do
    after_commit :elasticsearch_index_document, on: :create, if: :searchable?
    after_commit :elasticsearch_delete_document, on: :destroy
    after_commit :elasticsearch_reindex_document, on: :update
  end
  class_methods do
    delegate :refresh_index!, :delete_index!, :index_exists?, to: :__elasticsearch__
    def elasticsearch_import(records)
      records.each do |record|
        request =
          {
            index: index_name,
            id: record.id,
            body: { doc: record.as_indexed_json },
          }
        __elasticsearch__.client.update(request)
      end
    end
    def reindex(batch_size: 1000)
      __elasticsearch__.create_index! unless index_exists?
      q = current_scope || all
      q = q.elasticsearch_index if q.respond_to?(:elasticsearch_index)
      q.find_each(batch_size: batch_size, &:reindex)
    end
    def query(query = nil, &block)
      __elasticsearch__.search(query || Elasticsearch::DSL::Search.search(&block))
    end
  end
  def searchable?
    true
  end
  # rubocop:disable Lint/SuppressedException
  def elasticsearch_update_document
    # Model更新時にdocumentのすべてのfieldを更新することで、関連Modelから参照しているfieldの更新も行えるようにする
    __elasticsearch__.index_document
  rescue Elasticsearch::Transport::Transport::Errors::NotFound
  end
  def elasticsearch_index_document
    __elasticsearch__.index_document
  rescue Elasticsearch::Transport::Transport::Errors::NotFound
  end
  def elasticsearch_delete_document
    __elasticsearch__.delete_document
  rescue Elasticsearch::Transport::Transport::Errors::NotFound
  end
  # rubocop:enable Lint/SuppressedException
  def elasticsearch_reindex_document
    if searchable?
      elasticsearch_update_document
    else
      elasticsearch_delete_document
    end
  end
  alias reindex elasticsearch_reindex_document
end
module Elasticsearch::Model::SearchConfig
  extend ActiveSupport::Concern
  included do
    index_name model_name.plural
  end
end
