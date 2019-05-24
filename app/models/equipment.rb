class Equipment < ApplicationRecord
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_many :equipment_attachments, dependent: :destroy
  has_many :bookings
  belongs_to :user
  include PgSearch
  pg_search_scope :global_search,
    against: [ :name, :sport],
    using: {
      tsearch: { prefix: true }
    }


  accepts_nested_attributes_for :equipment_attachments

  validates :name, presence: true
  validates :sport, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validate :validate_photo
  # validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  SPORTS = ["Beach", "Mountain", "River"]

  private

  def validate_photo
    errors.add(:equipment_attachments, "Need a photo") if equipment_attachments.size == 0
  end
end
