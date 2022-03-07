class Clap < ApplicationRecord
  validates :clapper_id, uniqueness: { scope: :story_id }

  belongs_to :story

    # belongs_to :clapper, 
    #     primary_key: :id, 
    #     foreign_key: :clapper_id, 
    #     class_name: :User

end
