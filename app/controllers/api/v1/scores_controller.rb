class Api::V1::ScoresController < ApplicationController

	def index
		@contestants = Contestant.order("score ASC").last(20).reverse
	end

end
