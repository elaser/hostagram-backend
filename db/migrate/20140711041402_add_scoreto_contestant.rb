class AddScoretoContestant < ActiveRecord::Migration
  def change
  	add_column :contestants, :score, :integer, :default => 0
  end
end
