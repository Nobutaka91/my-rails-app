class Post < ApplicationRecord # form部分のvalidatesの設定
  has_many :comments, dependent: :destroy # Postモデルのデータに複数のcommentが紐づけられる / Postが削除された時に、関連するコメントも自動的に削除される

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5}
end
