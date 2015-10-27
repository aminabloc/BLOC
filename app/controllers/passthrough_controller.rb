class PassthroughController < ApplicationController
  def index
    
    if @user && current_user.role == "company" 
      redirect_to jobs_path
    elsif @user && current_user.role == "student"
      redirect_to student_path 
    else
      redirect_to jobs_path
    end
  end
end