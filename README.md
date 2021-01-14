## L-MGMT
ホテルマンとして勤務していた時の、お客様のお荷物を管理する業務のペーパーレス化を図るため、また、システム化したいという思いがあり作成しました。

## 概要
ゲスト名や引き取り日、保管場所(必須項目)で、お客様のお荷物を管理できます。状況により、部屋番号や電話番号、備考欄を登録できます。詳細画面にて、情報の編集、削除が可能です。
さらに、登録した情報を名前で検索可能です。
ホテルマンの忙しさを考え、できるだけ早く登録できるよう、ひと目見るだけで使い方がわかるようにシンプルにしました。

## 本番環境

http://52.197.1.109/

ユーザー名:admin

パスワード:0526


## 注目して欲しいところ
- 環境開発にDockerを使用。
- CircleCIを使って自動テスト(RSpec,rubocop)を実行。

## DEMO

### 一覧ページ
<img width="1436" alt="DEMO" src="https://user-images.githubusercontent.com/60959289/94989656-6eba8580-05b1-11eb-8e5d-9ac5e83fab90.png">

### 登録ページ
<img width="1433" alt="DEMO2" src="https://user-images.githubusercontent.com/60959289/94989737-f0aaae80-05b1-11eb-9cdd-49781e138a31.png">

### 詳細、情報編集削除ページ
<img width="1438" alt="demo3" src="https://user-images.githubusercontent.com/60959289/94989783-3a939480-05b2-11eb-8714-8742f93de4ae.png">

## 使用技術

### 開発環境
- Docker
- CircleCI
- Github

## フロントエンド
- haml
- scss
- JavaScript(JQuery)

## バックエンド
- Ruby 2.6.3
- Ruby on Rails 5.2.4.3
- MySQL 5.6.47

## インフラ
- AWS
- EC2(Amazon Linux2 AMI)

## クラウドアーキテクチャ
<img width="1246" alt="lmgmt" src="https://user-images.githubusercontent.com/60959289/94340247-3825bd80-003b-11eb-9c81-62ea4a818d3c.png">



## 機能一覧
- 荷物、顧客情報登録機能
- 情報編集削除機能
- ゲスト名でお荷物の検索機能

## テスト
- RSpec
  - 単体テスト
  - コントローラーテスト

## 今後実装したい機能
- 検索機能のインクリメンタルサーチ化等の、肉付け
- あくまでも、荷物の管理にすぎないため、一連の流れまで考えたサービス拡大を目指したい
- DockerでNginxのコンテナを立てる
- もっとJSを組み込む
- RDSを使用する
