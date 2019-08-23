class Ambiance < ApplicationRecord
  has_many :apero_ambiances, dependent: :destroy
end
