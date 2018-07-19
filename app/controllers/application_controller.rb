class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller? 

	# says you can call it from within the class or any sub-class code, but not from outside of the class
	protected

	def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
    # devise_parameter_sanitizer.permit(:posts_new, keys: [:image])
  end


end
