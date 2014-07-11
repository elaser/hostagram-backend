class Api::V1::BattlesController < ApplicationController
	def create

		if params[:battle].nil?
			render :json => {:success => false, :error => "No battle dictionary presented"}, :status => 422
			return
		else
			winner = params[:battle][:winner]
			loser = params[:battle][:loser]

			if winner.nil? or loser.nil?
				render :json => {:success => false, :error => "No winner or loser"}, :status => 422
				return
			else
				Battle.record_scores(winner, loser)
				render :json => {:success => true}, :status => 200	
			end


			

		end
	end
end
