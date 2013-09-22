class PiecesController < ApplicationController

	def new
    @assembly = Assembly.find(params[:assembly_id])
		@piece = @assembly.pieces.new
	end

	def show
    @assembly = Assembly.find(params[:assembly_id])
		@piece = @assembly.pieces.find(params[:id])
	end

	def create
    @assembly = Assembly.find(params[:assembly_id])
		@piece = @assembly.pieces.new params[:piece]
		if @piece.save
			redirect_to new_assembly_piece_path(@assembly), notice: "Your 3D printing parts has been successfully created."
		else
			render 'new'
		end
	end

	def index 
    redirect_to assembly_piece_path(@assembly, @piece)
	end
end
