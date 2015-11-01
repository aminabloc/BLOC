class PassthroughController < ApplicationController
  def index
    
    if @user && current_user.role == "company" 
      redirect_to company_home_path
    elsif @user && current_user.role == "student"
      redirect_to student_home_path 
    else
      redirect_to student_home_path
    end
  end
end