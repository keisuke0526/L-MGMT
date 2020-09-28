## LuggageMGT
ホテルマンとして勤務していた時の、お客様のお荷物を管理する業務のペーパーレス化を図るため、また、システム化したいという思いがあり作成しました。

![Gif](https://raw.github.com/wiki/keisuke0526/L-NGNT/ezgif-5-4b9e4526b485.gif)

## 注目して欲しいところ
- 環境開発にDockerを使用。
- CircleCIを使って自動テスト(RSpec,rubocop)を実行。

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

## インフラ
- AWS
- EC2

## クラウドアーキテクチャ
<img width="1246" alt="lmgmt" src="https://user-images.githubusercontent.com/60959289/94340247-3825bd80-003b-11eb-9c81-62ea4a818d3c.png">



## 機能一覧
- 荷物、顧客情報登録機能(CRUD)
- ゲスト名でお荷物の検索機能



## itemsテーブル
|Column|Type|Option|
|------|----|------|
|guest_name|string|null: false|
|pickup_day|date|null: false|
|houseroom|string|null: false|
|room_no|integer||
|phone_number|integer||
|remark|string||

