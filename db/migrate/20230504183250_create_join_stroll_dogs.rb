class CreateJoinStrollDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :join_stroll_dogs do |t|

      t.timestamps
    end
  end
end
