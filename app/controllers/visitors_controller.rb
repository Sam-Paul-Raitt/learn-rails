class VisitorsController < ApplicationController

	def new
		@owner = Owner.new
		flash.now[:notice] = 'Benvenuto!'
		flash.now[:alert] = 'Ahora dentro de nada...'
	end

end