# MuscleApp
# 概要
トレーニング好きのためのアプリ、トレーニングに関する情報や悩みをshareすることができます。
初めてのオリジナルアプリになります。
# 本番環境(デプロイ先　テストアカウント＆ID)
https://muscle-tweet-36589.herokuapp.com/posts/55
Basic認証

ID：chacha

password:0805

ログイン情報

Emailアドレス：1@1

password:111aaa

# 制作背景
テックキャンプでの学習カリキュラムを終了した後、オリアプ第一弾として完成。
Fitnssをメインに扱うトレーニング専用サイトが少ないと思ったことがきっかけです。
トレーニングは自分の人生を豊かにしてくれました。Fitnssに関するかっこいいアプリがあればもっと多くの方に
トレーニングの良さを知ってもらえると思いました。
トレーニング初心者から上級者まで多くの方に意味あるサイトにしていきたいです。

# DEMO
トップページ
![9a13c288c5fc85b708538b18ada7b389](https://user-images.githubusercontent.com/88130111/135392853-f47927d5-1ac7-48d7-be45-20067c6b2c0e.gif)
新規登録ページ
![aa5bc7b48baa6775c1230d24293acd4e](https://user-images.githubusercontent.com/88130111/135393109-cb77a6bd-a58b-41da-80ef-261fb0960be5.gif)
ログインページ
![d9224140e4a0542bb1f7f5997a2810d7](https://user-images.githubusercontent.com/88130111/135393287-6842e7d4-2cb5-4ed7-bc8b-347b2ba0d39d.gif)
投稿ページ
![a219e46b2eba278c422b47970d79d9c7](https://user-images.githubusercontent.com/88130111/135393468-225ef3fc-7332-4587-bb99-e56b5e96e52c.gif)
コメント
![d34c8ff6cb7e18beb0e129e64e860b5b](https://user-images.githubusercontent.com/88130111/135393594-fce46426-29cc-45a4-804c-bf8eb3e961ea.gif)
編集、削除ページ
![4f2140c82a91a37355e23a2d294d7a57](https://user-images.githubusercontent.com/88130111/135393681-6e525bb6-1336-494e-a92d-798f7a3dda10.gif)

# 工夫したポイント
ユーザー同士のコミュニケーションを活発にするためにコメント機能を実装しました。

# 使用技術(開発環境)
HTML・CSS
# バックエンド
Ruby・Ruby on Rails
# フロントエンド
JavaScript・jquery
# データベース
Sequel Pro
# 本番環境
heroku
# ソース管理
github・github desktop
# エディタ
vs code
# 課題や今後実装したい機能
ホームページのpushボタンから、自分の作った新たなサイトにリンクできるようにしようと思っています。

アニメーション機能（※アニメーションを用いたホームページを新たに作成しました。）
# DB設計
# users

|Column              |Type           |Options                 |
|--------------------|---------------|------------------------|
|name                |string         |null: false             |
|email               |string         |null: false,unique: true|
|encrypted_password  |string         |null: false             |

## association
has_many :posts
has_many :comments


# posts

|Column              |Type            |Options                         |
|--------------------|----------------|--------------------------------|
|name                 |string          |null: false                     |
|muscle_id           |integer         |null: false                     |
|explanation         |text            |null: false                     |
|user                |references      |null:false, foreign_key: true   |
|image               |Active Storage                                   |

## association
belongs_to :user
has_many :comments
has_one_attached :image

# comments
|Column              |Type            |Options                         |
|--------------------|----------------|--------------------------------|
|post_id             |string          |null: false                     |
|user_id             |string          |null: false                     |
|text                |text            |null: false                     |

## association
belongs_to :user
belongs_to :post
has_one :post

