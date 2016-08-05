class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
  	
  	if User.new(role: 0).guest?
  		redirect_to new_user_registration_path, notice: 'Category was successfully updated.'
  	else
  		redirect_to root_path, :alert => exception.message
  	end
  end
end
