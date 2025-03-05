class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: 0..5 }
end

# class Restaurant < ApplicationRecord
#   validates :rating, inclusion: { in: [0,1,2,3], allow_nil: false }
# end
