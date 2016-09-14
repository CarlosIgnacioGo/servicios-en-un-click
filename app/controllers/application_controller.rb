class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|	
  	# if User.new(role: 0).guest?
  		# redirect_to new_user_session_path, notice: 'Debes iniciar sesión'
  	# else
  	redirect_to root_path, :alert => "Debes estar logeado"
  	# end
  end
end
