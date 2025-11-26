class Review < ApplicationRecord
  belongs_to :bike

  validates :rating, inclusion: 1..5
end
