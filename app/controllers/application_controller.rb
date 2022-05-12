class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  add_flash_types :error

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: %i[email encrypted_password name nickname birthday]
    )
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: %i[password password_confirmation name
               nickname birthday current_password]
    )
  end
end
