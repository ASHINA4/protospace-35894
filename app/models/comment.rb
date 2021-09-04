class Comment < ApplicationRecord
    # tweetsテーブルとのアソシエーション
    belongs_to :prototype
    # usersテーブルとのアソシエーション
    belongs_to :user

    validates :text, presence: true
end
