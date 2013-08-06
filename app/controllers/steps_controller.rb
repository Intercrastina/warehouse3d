class StepsController < ApplicationController

	def new
		@step = Step.new
	end

	def show
		@step = Step.find(pieces[:id])
	end

	def create
		@step = Step.new params[:step]
		if @step.save
			redirect_to step_path(@step), notice: "Step created."
		else
			render 'new'
		end
	end

	def index 
		redirect_to step_path(@step.id)
	end
end
