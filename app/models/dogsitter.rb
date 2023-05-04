class Dogsitter < ApplicationRecord
  belongs_to :city
  has_many :strolls
  has_many :join_stroll_dogs, through: :strolls
  has_many :dogs, through: :join_stroll_dogs
end
