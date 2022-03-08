class List < ApplicationRecord
  validates :user_id, uniqueness: { scope: :story_id }

  belongs_to :user

end