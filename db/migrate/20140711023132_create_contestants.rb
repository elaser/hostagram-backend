class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :username
      t.integer :user_id
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
