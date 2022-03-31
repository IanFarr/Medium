class Story < ApplicationRecord
  validates :title, :body, :author, :author_id, :created_at, presence: true

  has_many :claps, dependent: :destroy
  has_many :lists, dependent: :destroy
  has_one_attached :photo

end
