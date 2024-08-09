Elasticsearch::Model.client = Elasticsearch::Client.new(
  host: 'host.docker.internal:9200',
  log: true,
  user: 'elastic',
  password: 'password'
)
