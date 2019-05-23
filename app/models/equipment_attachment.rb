class EquipmentAttachment < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :equipment

  validates :photo, presence: true
end
