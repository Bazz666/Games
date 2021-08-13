class Game < ApplicationRecord
    has_one_attached :cover_image
    has_many_attached :pieces_images
    has_one_attached :pdf_rules
    
  
end
