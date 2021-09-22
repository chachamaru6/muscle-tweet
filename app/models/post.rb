class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :muscle
  #ジャンルの選択が「--」の時は保存できないようにする
  validates :muscle_id, numericality: { other_than: 1, message: "can't be blank" } 
end
