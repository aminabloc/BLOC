class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :mailbox, :conversation



  
  private
 
  def mailbox
    @mailbox ||= current_user.mailbox
  end  

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

 
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :role
    devise_parameter_sanitizer.for(:account_update) << :school
    devise_parameter_sanitizer.for(:account_update) << :major
    devise_parameter_sanitizer.for(:account_update) << :experience
    devise_parameter_sanitizer.for(:account_update) << :name 
    devise_parameter_sanitizer.for(:account_update) << :image
    devise_parameter_sanitizer.for(:account_update) << :skills
    devise_parameter_sanitizer.for(:account_update) << :gradyear
    devise_parameter_sanitizer.for(:account_update) << :orgs
    devise_parameter_sanitizer.for(:account_update) << :links
    devise_parameter_sanitizer.for(:account_update) << :threeskills
    devise_parameter_sanitizer.for(:account_update) << :phone
    devise_parameter_sanitizer.for(:account_update) << :testimonial
    devise_parameter_sanitizer.for(:account_update) << :geo
    devise_parameter_sanitizer.for(:account_update) << :hometown
    devise_parameter_sanitizer.for(:account_update) << :company
    devise_parameter_sanitizer.for(:account_update) << :mission
    devise_parameter_sanitizer.for(:account_update) << :industry
    devise_parameter_sanitizer.for(:account_update) << :statement
    devise_parameter_sanitizer.for(:account_update) << :title
    devise_parameter_sanitizer.for(:account_update) << :role
    devise_parameter_sanitizer.for(:account_update) << :resume
  end

def resource_name
:user
end

def resource
@resource ||= User.new
end

def devise_mapping
@devise_mapping ||= Devise.mappings[:user]
end


 def resource_name
    :user
    end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end



 private
  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(user)
    new_user_session_path
  end

end

