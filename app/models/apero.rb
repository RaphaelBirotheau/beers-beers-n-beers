class Apero < ApplicationRecord
  belongs_to :user
  has_many :bookings

  AMBIANCES = ["Ricard", "Dégustation", "Match de foot", "290 Bacth Mode", "YOLO"]
end
