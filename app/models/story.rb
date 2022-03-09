class Story < ApplicationRecord
  validates :title, :body, :tags, :author, :author_id, :created_at, presence: true

  has_many :claps, dependent: :destroy
  has_one_attached :photo

end
