class Comment < ApplicationRecord
  belongs_to :post # Commentモデルのデータを,1つのpostに紐づかせる

  validates :body, presence: true, length: { minimum: 5}
end
