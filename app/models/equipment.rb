class Equipment < ApplicationRecord
  has_many :equipment_attachments, dependent: :destroy
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
  # validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  SPORTS = ["Beach", "Mountain", "River"]
end
