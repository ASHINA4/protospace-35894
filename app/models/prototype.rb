class Prototype < ApplicationRecord
  # userテーブルとのアソシエーション
  belongs_to :user
  # commentsテーブルとのアソシエーション
  has_many :comments
  has_one_attached :image

  validates :title, :catch_copy, :concept, :image, presence: true
end
