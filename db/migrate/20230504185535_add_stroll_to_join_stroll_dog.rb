class AddStrollToJoinStrollDog < ActiveRecord::Migration[7.0]
  def change
    add_reference :join_stroll_dogs, :stroll, null: false, foreign_key: true
  end
end
