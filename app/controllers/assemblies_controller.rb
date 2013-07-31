class AssembliesController < ApplicationController

	def new
		@assembly = Assembly.new
	end

	def show
		@assembly = Assembly.find(params[:id])
	end

	def create
		@assembly = Assembly.new params[:assembly]
		if @assembly.save
			redirect_to assembly_path(@assembly), notice: "Your object has been successfully created."
		else
			render 'new'
		end
	end

	def index 
		redirect_to order_assembly_path(@assembly.id)
	end
end
