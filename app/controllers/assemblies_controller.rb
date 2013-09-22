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
		@assemblies = Assembly.order("created_at desc").limit(50)
	end

	def edit
		@assembly = Assembly.find(params[:id])
	end

	def update
		@assembly = Assembly.find(params[:id])
		if @assembly.update_attributes  params[:assembly]
			redirect_to assembly_path(@assembly)
		else 
			render 'edit'
		end
	end
end
