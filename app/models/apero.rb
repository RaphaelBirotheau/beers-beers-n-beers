class Apero < ApplicationRecord
  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader
  AMBIANCES = ["Ricard", "Dégustation", "Match de foot", "290 Bacth Mode", "YOLO"]
end
