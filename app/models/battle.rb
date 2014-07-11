class Battle < ActiveRecord::Base
	belongs_to :winner, :class_name => "Contestant", :foreign_key => "winner_id"
	belongs_to :loser, :class_name => "Contestant", :foreign_key => "loser_id" 
	after_create :tally


	# We will record the scores of the first user and the second user.  We will need to see if these users exist.
	# If they don't, then we will need to create them
	def self.record_scores (winner, loser)
		c1 = Contestant.obtain_user(winner)
		c2 = Contestant.obtain_user(loser)
		Battle.create!(:winner => c1, :loser => c2)
	end

	private
	def tally
		winner.wins = winner.wins + 1
		loser.losses = loser.losses + 1

		winner.save
		loser.save
	end
end
