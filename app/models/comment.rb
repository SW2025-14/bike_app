class Comment < ApplicationRecord
  belongs_to :post

  validates :user_name, presence: true
  validates :content, presence: true
end
