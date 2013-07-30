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
			redirect_to assembly_path(@assembly)
		else
			render 'new'
		end
	end

end
