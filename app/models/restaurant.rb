class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: { message: "Le champs adresse ne peut pas être vide." }
  validates :category, presence: true, inclusion: { in: CATEGORIES, message: "%{value} n'est pas une catégorie valide" }
end
