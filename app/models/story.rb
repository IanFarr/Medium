class Story < ApplicationRecord
  validates :title, :body, :tags, :author, :author_id, :created_at, presence: true

  has_many :claps, dependent: :destroy

  has_many :saves
  has_many :save_users,
    through: :saves

end
