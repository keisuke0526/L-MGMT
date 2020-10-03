## LuggageMGT
ホテルマンとして勤務していた時の、お客様のお荷物を管理する業務のペーパーレス化を図るため、また、システム化したいという思いがあり作成しました。

## 概要
ゲスト名や引き取り日、保管場所(必須項目)で、お客様のお荷物を管理できます。状況により、部屋番号や電話番号、備考欄を登録できます。詳細画面にて、情報の編集、削除が可能です。
さらに、登録した情報を名前で検索可能です。

## 本番環境
http://54.178.22.150:3000/

## 注目して欲しいところ
- 環境開発にDockerを使用。
- CircleCIを使って自動テスト(RSpec,rubocop)を実行。

## DEMO
一覧ページ
<img width="1436" alt="DEMO" src="https://user-images.githubusercontent.com/60959289/94989656-6eba8580-05b1-11eb-8e5d-9ac5e83fab90.png">

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

