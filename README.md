# MuscleApp
# 概要
# URL
# テスト用アカウント
# 利用方法
# 課題解決
# 要件定義
# 実装機能、GIF
# 予定
# ER図
# ローカル動作方法


# テーブル設計

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

