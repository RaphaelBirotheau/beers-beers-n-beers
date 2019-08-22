class Apero < ApplicationRecord
  geocoded_by :place
  after_validation :geocode, if: :will_save_change_to_place?
  belongs_to :user
  has_many :bookings, dependent: :destroy

  mount_uploader :photo, PhotoUploader
  AMBIANCES = ["Ricard", "Binouse", "Dégustation", "Match de foot", "290 Batch Mode", "YOLO", "Vomito"]
end
