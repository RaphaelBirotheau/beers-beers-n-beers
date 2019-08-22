class Apero < ApplicationRecord
  geocoded_by :place
  after_validation :geocode, if: :will_save_change_to_place?
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_many :users, through: :bookings
  mount_uploader :photo, PhotoUploader
  AMBIANCES = ["Ricard", "Binouse", "Dégustation", "Match de foot", "290 Batch Mode", "YOLO", "Vomito"]

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:title, :place, :ambiance],
    associated_against: {
      user: [:first_name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
