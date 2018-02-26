class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { minimum: 3, message: 'タイトルは3文字以上で入力してください'}
    validates :body, presence: true
end
