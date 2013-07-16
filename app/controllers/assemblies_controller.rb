class AssembliesController < ApplicationController

	def show
		@assembly = Assembly.find(params[:id])
	end

end
