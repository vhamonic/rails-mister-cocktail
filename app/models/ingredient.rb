class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true

 def cocktails_linked
  cocktails.map { |cocktail| cocktail.name }.join(', ')
 end

end
