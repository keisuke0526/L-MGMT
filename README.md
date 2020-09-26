## LuggageMGT
ホテルマンとして勤務していた時の、お客様のお荷物を管理する業務のペーパーレス化を図るため、また、システム化したいという思いがあり作成しました。

## 注目して欲しいところ
- 環境開発にDockerを使用。
- CircleCIを使って自動テスト(RSpec,rubocop)、自動デプロイを実行。

## 使用技術
### 開発環境
- Docker
- CircleCI
- Github

## クラウドアーキテクチャ
<img width="1276" alt="b7a13e5a781896e27df00e8912271df6" src="https://user-images.githubusercontent.com/60959289/94339256-75864d00-0033-11eb-81af-0af7d70101fb.png">

## フロントエンド
- haml
- scss
- jquery

## バックエンド
- Ruby 2.5.3
- Ruby on Rails 5.2.4.3
- MySQL 5.6.47

## インフラ
- AWS
- EC2


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

