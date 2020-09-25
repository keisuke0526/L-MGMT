## LuggageMGT
ホテルマンとして勤務していた時に、お客様の荷物を紙媒体で管理しており、システム化にしたく作成しました。
全てのお客様では規模が大きくなりすぎるため、接客の優先順位の高いVIP用に作成しました。

## 注目して欲しいところ
- 環境開発にDockerを使用。
- CircleCIを使って自動テスト(RSpec,rubocop)、自動デプロイを実行。

## 使用技術
### 開発環境
- Docker
- CircleCI
- Github

## フロントエンド
- haml
- scss
- jquery

## バックエンド
- Ruby 2.5.3
- Ruby on Rails 5.2.4.3
- MySQL 5.6.47


## 機能一覧
- 荷物、顧客情報登録機能(CRUD)
- ゲスト名でお荷物の検索機能


## テスト
- RSpec
  - 単体テスト
  - コントローラーテスト
  - システムテスト(capybara)

## itemsテーブル
|Column|Type|Option|
|------|----|------|
|guest_name|string|null: false|
|pickup_day|date|null: false|
|houseroom|string|null: false|
|room_no|integer||
|phone_number|integer||
|remark|string||

