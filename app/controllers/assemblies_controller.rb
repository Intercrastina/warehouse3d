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
			redirect_to new_assembly_piece_path(@assembly), notice: "Your object has been successfully created."
		else
			render 'new'
		end
	end

	def index 
		redirect_to assembly_path(@assembly)
	end
end
