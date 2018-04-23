class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  # def after_sign_up_path_for(resource)
  #   '/projects#index', flash[:notice] = 'Account settings updated'
  # end

  # def after_update_path_for(resource)
  #   user_url(resource)
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company, :address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:company, :address])
  end
