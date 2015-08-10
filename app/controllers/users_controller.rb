class UsersController < ApplicationController
	def show
  #add methods here
  @user = User.find(params[:id])

  respond_to do |format|
    format.html 
  end
end	
end
    