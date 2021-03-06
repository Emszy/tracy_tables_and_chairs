class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you mway want to use :null_session instead.
  protect_from_forgery with: :exception

        before_action :configure_permitted_parameters, if: :devise_controller?



protected
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me, :first_name, :last_name) }
  devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me, :first_name, :last_name) }
  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :first_name, :last_name) }
end

   

  def after_sign_in_path_for(resource)
  	new_user_choice_path
end



end
