class AddDogsitterToStroll < ActiveRecord::Migration[7.0]
  def change
    add_reference :strolls, :dogsitter, null: false, foreign_key: true
  end
end
