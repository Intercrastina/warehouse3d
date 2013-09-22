class StepsController < ApplicationController

	def new
	@assembly = Assembly.find(params[:assembly_id])
		@step = @assembly.steps.new
	end

	def show
	@assembly = Assembly.find(params[:assembly_id])
		@step = @assembly.steps.find(params[:id])
	end

	def create
	@assembly = Assembly.find(params[:assembly_id])
		@step = @assembly.steps.new params[:step]
		if @step.save
			redirect_to new_assembly_step_path(@assembly), notice: "Step created."
		else
			render 'new'
		end
	end

	def index 
		redirect_to assembly_step_path(@assembly, @step.id)
	end
end