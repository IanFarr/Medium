class Clap < ApplicationRecord

  belongs_to :story

    # belongs_to :clapper, 
    #     primary_key: :id, 
    #     foreign_key: :clapper_id, 
    #     class_name: :User

end
