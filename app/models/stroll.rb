class Stroll < ApplicationRecord
  belongs_to :dogsitter
  has_many :join_stroll_dogs
  has_many :dogs, through: :join_stroll_dogs
end
