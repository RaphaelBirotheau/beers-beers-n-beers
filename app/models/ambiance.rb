class Ambiance < ApplicationRecord
  has_many :apero_ambiances, dependent: :destroy
  SELECTION = ["De la brousse", "Rumba Congolaise", "Ricard", "Dégustation de vins", "Match de foot", "Bière", "Yolo", "Saucisson", "Feu de joie", "Félix le chameau"]
end
