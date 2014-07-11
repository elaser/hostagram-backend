class Contestant < ActiveRecord::Base
	has_many :battle_wins, :class_name => "Battle", :foreign_key => "winner_id"
	has_many :battle_losses, :class_name => "Battle", :foreign_key => "loser_id"

	

	def self.obtain_user (user_dictionary)
		current_c = Contestant.find_by_user_id(user_dictionary[:user_id])
		if (!current_c)
			current_c = Contestant.create!(:full_name => user_dictionary[:full_name], :user_id => user_dictionary[:user_id], :username => user_dictionary[:username])
		end
		return current_c			
	end
end
