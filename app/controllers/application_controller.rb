class ApplicationController < ActionController::Base
  skip_forgery_protection

  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :user_type,:first_name,:last_name,:contact,:age,:city])
  end
end
