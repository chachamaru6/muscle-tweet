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
has_many :likes


# posts

|Column              |Type            |Options                         |
|--------------------|----------------|--------------------------------|
|題名                 |string          |null: false                     |
|muscle_id           |integer         |null: false                     |
|explanation         |text            |null: false                     |
|user                |references      |null:false, foreign_key: true   |
|image               |Active Storage                                   |

## association
belongs_to :user
has_many :comments
has_many :likes
has_one_attached :image

# comments
|Column              |Type            |Options                         |
|--------------------|----------------|--------------------------------|
|post_id             |string          |null: false                     |
|user_id             |string          |null: false                     |
|comment             |text            |null: false                     |

## association
belongs_to :user
belongs_to :post
has_one :post

# likes
|Column              |Type            |Options                         |
|--------------------|----------------|--------------------------------|
|post_id             |string          |null: false                     |
|user_id             |string          |null: false                     |

## association
belongs_to :user
belongs_to :post
