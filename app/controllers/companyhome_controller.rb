class CompanyhomeController < ApplicationController
	def index
		@jobs= Job.all

	end
end
