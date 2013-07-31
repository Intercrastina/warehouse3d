class PiecesController < ApplicationController

	def new
		@piece = Piece.new
	end

	def show
		@piece = Piece.find(params[:id])
	end

	def create
		@piece = Piece.new params[:piece]
		if @piece.save
			redirect_to piece_path(@piece), notice: "Your 3D printing parts has been successfully created."
		else
			render 'new'
		end
	end

	def index 
		redirect_to order_piece_path(@piece.id])
	end
end