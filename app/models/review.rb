class Review < ApplicationRecord

# relationship to user 
belongs_to :user
belongs_to :restaurant

end
