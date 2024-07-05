class Post < ApplicationRecord # form部分のvalidatesの設定
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5}
end
