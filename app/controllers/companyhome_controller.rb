class CompanyhomeController < ApplicationController
	def index
		@jobs= @user.jobs

	end
end
