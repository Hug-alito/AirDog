class AddDogToJoinStrollDogs < ActiveRecord::Migration[7.0]
  def change
    add_reference :join_stroll_dogs, :dog, null: false, foreign_key: true
  end
end
