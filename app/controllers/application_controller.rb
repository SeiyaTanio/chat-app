class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configere_permitted_paarameters, if: :devise_controller?

  private
  def configere_permitted_paarameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
