class Review < ApplicationRecord
  belongs_to :equipment
  validates :title, presence: true
  validates :description, length: { minimum: 10 }
end
