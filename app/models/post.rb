class Post < ApplicationRecord

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :muscle
  #ジャンルの選択が「--」の時は保存できないようにする
  validates :muscle_id, numericality: { other_than: 1, message: "can't be blank" } 
end
