class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # prototypesテーブルとのアソシエーション
  has_many :prototypes, dependent: :destroy
  # commentsテーブルとのアソシエーション
  has_many :comments, dependent: :destroy
end
