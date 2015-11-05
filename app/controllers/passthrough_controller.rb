class PassthroughController < ApplicationController
  def index
    
		unless user_signed_in?
			redirect_to new_user_session_path
		else
			redirect_to student_home_path
		end
    # unless user_signed_in?
    # 	redirect_to new_user_session_path
    # elsif !@user.nil?
    # 	redirect_to student_home_path
    # if @user && current_user.role == "company" 
    #   redirect_to company_home_path
    # elsif @user && current_user.role == "student"
    #   redirect_to student_home_path 
    # else
    #   redirect_to student_home_path
    # end
  end
end