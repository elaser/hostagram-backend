class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :username, :default => ""
      t.integer :user_id, :default => 0
      t.integer :wins, :default => 0
      t.integer :losses, :default => 0
      t.string :full_name, :default => ""

      t.timestamps
    end
  end
end
