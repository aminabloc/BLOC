class PassthroughController < ApplicationController

  def index
    path = case current_user.role
      when 'company'
        companyhome_path
      when 'student'
        studenthome_path
      else
        jobs_path
    end	

    redirect_to path     
  end
end

