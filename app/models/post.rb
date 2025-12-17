class Post < ApplicationRecord
  has_one_attached :photo, dependent: :destroy

  validates :name, :user_name, :gender, presence: true
  validates :likes, numericality: { greater_than_or_equal_to: 0 }
end
