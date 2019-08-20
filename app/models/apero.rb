class Apero < ApplicationRecord
  belongs_to :user
  has_many :bookings

  AMBIANCE = ["Ricard", "Dégustation", "Match de foot", "290 Bacth Mode", "YOLO"]
end
