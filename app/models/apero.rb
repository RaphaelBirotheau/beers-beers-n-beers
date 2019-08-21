class Apero < ApplicationRecord
  geocoded_by :place
  after_validation :geocode, if: :will_save_change_to_place?
  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader
  AMBIANCES = ["Ricard", "Dégustation", "Match de foot", "290 Bacth Mode", "YOLO"]
end
