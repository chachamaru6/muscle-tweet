class Muscle < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '大胸筋（胸）' },
    { id: 3, name: '三角筋（肩）' },
    { id: 4, name: '上腕三頭筋（腕）' },
    { id: 5, name: '僧帽筋（背中）' },
    { id: 6, name: '広背筋（背中）' },
    { id: 7, name: '上腕二頭筋（腕）' },
    { id: 8, name: '前腕' },
    { id: 9, name: '腹筋（体幹）' },
    { id: 10, name: '腹直筋（体幹）' },
    { id: 11, name: '大腿四頭筋（脚）' },
    { id: 12, name: '大腿二頭筋（脚）' },
    { id: 13, name: '大臀筋（お尻）' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
