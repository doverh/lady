class InsightsController < ApplicationController
	before_action :find_pin, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

	def index
		@insights = Insight.all.order("created_at DESC")
	end

	def new
		@insight = Insight.new
	end
		
	def create
		@insight = Insight.new(insight_params)

		if @insight.save
			redirect_to @insight, notice: "Sucessfully created new Insight"
		else
			render "new"
		end

	end

	def edit
	end

	def update
		if @insight.update(insight_params)
			redirect_to @insight, notice:"Insight sucessfully updated!"
		else
			render 'edit'	
		end
	end

	def destroy
		@insight.destroy
		redirect_to root_path
	end


	private 

	def insight_params
		params.require(:insight).permit(:title, :description)
	end

	def find_pin
		@insight = Insight.find(params[:id])
	end
end
