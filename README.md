# 環境構築手順
## Dockerをインストール
https://docs.docker.com/get-docker
- メモリの割り当てはよしなにしてください
  - Preferences → Resources → Advanced → Memory
## セットアップ
1. `$ docker compose build`を実行
1. `$ docker compose run app bash`(appコンテナに移動)
1. `$ rails db:create`を実行
1. `$ rails db:migrate`を実行
1. `$ rails db:seed`を実行
1. `$ rails c`(railsコンソールに移動)
1. `$ Rails.application.load_tasks` を実行
1. `$ Rake::Task['create_cities'].execute` を実行
1. `$ Rake::Task['create_railway_data'].execute` を実行
1. `$ Product.__elasticsearch__.create_index!` を実行
1. `$ Product.import` を実行
1. `$ RailwayStation.__elasticsearch__.create_index!` を実行
1. `$ RailwayStation.import` を実行

## elasticsearchのコマンドサンプル
* Productのindex作成ないしimportの実行が成功しているか確認したい場合
  * rails コンソールにて以下を実行する、結果がDB側に保存されているProductの総数と一致している場合ok
  * `$ Product.__elasticsearch__.search('*').results.total`
* 現在のmappingを確認したい場合
  * `$ RailwayStation.__elasticsearch__.client.indices.get_mapping index: "railway_stations"`
* indexを更新したい場合
  * `$ RailwayStation.reindex`
* mappingの更新
  * `$ RailwayStation.__elasticsearch__.client.indices.put_mapping(index: RailwayStation.index_name, type: RailwayStation.document_type, body: RailwayStation.mapping.to_hash)`

# その他
* db制約を一切していません、seedなどcreateを複数回実行すると重複したデータが作成されてしまうことに注意してください
* なぜ駅テーブルではなく駅 x 路線の中間テーブルが位置情報を保持しているの？
  * 同一の駅名でも特定の路線で離れている駅が存在しているためです。
  * ただ駅テーブルが位置情報を持っていた方が都合がいいことが多いのでデータ移行タスク作成してくれる人がいたらPRいつでもウェルカムです。
