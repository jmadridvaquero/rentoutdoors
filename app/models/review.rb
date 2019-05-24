class Review < ApplicationRecord
  belongs_to :equipment
  belongs_to :user
  validates :title, presence: true
  validates :description, length: { minimum: 10 }
end
