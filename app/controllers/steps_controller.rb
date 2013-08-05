class StepsController < ApplicationController

	def new
		@step = Step.new
	end

	def show
		@step = Step.find(pieces[:id], extras)
	end

	def create
		@step = Step.new params[:id, :step_link]
		if @step.save
			redirect_to step_link_path(@step), notice: "Step created."
		else
			render 'new'
		end
	end

	def index 
		redirect_to order_step_path(@step.id])
	end
end