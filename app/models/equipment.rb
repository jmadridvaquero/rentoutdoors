class Equipment < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  validates :name, presence: true
  validates :sport, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :address, presence: true
  # validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  SPORTS = ["Beach", "Mountain", "River"]
end
