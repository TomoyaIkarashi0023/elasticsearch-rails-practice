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

# その他
* db制約を一切していません、seedなどcreateを複数回実行すると重複したデータが作成されてしまうことに注意してください
* なぜ駅テーブルではなく駅 x 路線の中間テーブルが位置情報を保持しているの？
  * 同一の駅名でも特定の路線で離れている駅が存在しているためです。
  * ただ駅テーブルが位置情報を持っていた方が都合がいいことが多いのでデータ移行タスク作成してくれる人がいたらPRいつでもウェルカムです。
