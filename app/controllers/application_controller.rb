class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
	  dashboards_index_path
  end

  def current_ability
	  @current_ability ||= Ability.new(current_admin)
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to dashboards_index_path, :alert => exception.message
  end
end
