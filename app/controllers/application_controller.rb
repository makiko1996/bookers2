class ApplicationController < ActionController::Base

  before_action :configre_permitted_parameters, if: :devise_controller?
  # before_action :set_current_user

  # def set_current_user
  #   @current_user = User.find_by(id: session[:user_id])
  # end

  # def authenticate_user
  #   if @current_user == nil
  #     redirect_to new_user_session_path
  #   end
  # end

  protected

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end

end
