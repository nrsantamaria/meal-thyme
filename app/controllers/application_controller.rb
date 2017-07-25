class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :admin?

  def admin?
    current_user && current_user.admin
  end

  private
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
