class Post < ApplicationRecord
<<<<<<< HEAD
  has_one_attached :photo
  validates :name, :user_name, :gender, presence: true
  validates :likes, numericality: { greater_than_or_equal_to: 0 }
=======
  has_one_attached :image
>>>>>>> 6260610588eec27fd6d0e557f060d198582d9f3f
end
