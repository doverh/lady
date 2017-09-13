class InsightsController < ApplicationController

	def index
	end

	def new
		@insight = Insight.new
	end
		
	def create
		@insight = Insight.new(insight_params)
	end

	private 

	def insight_params
		params.require(:insight).permit(:title, :description)
	end
end
