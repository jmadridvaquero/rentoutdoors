class User < ApplicationRecord
  has_many :bookings
  mount_uploader :avatar_photo, PhotoUploader
  has_many :equipment

  has_many :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :username, uniqueness: true
  validates :avatar_photo, presence: true

end
