class Equipment < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  validates :name, presence: true
  validates :sport, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :description, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  SPORTS = ["Category","Basketball", "Soccer", "Cricket", "Ballet", "Kayaking", "Rockclimbing",
  "Fishing", "Archery",
  "Badminton",
  "Cricket",
  "Bowling",
  "Boxing",
  "Curling",
  "Tennis",
  "Skateboarding",
  "Surfing",
  "Hockey",
  "Figure skating",
  "Yoga",
  "Fencing",
  "Fitness",
  "Gymnastics",
  "Karate",
  "Volleyball",
  "Weightlifting",
  "Basketball",
  "Baseball",
  "Rugby",
  "Wrestling",
  "High jumping",
  "Hang gliding",
  "Car racing",
  "Cycling",
  "Running",
  "Table tennis",
  "Fishing",
  "Judo",
  "Climbing",
  "Pool",
  "Shooting",
  "Horse racing",
  "Horseback riding",
  "Golf",
  "Canoeing"]
end
