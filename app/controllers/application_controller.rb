class ApplicationController < ActionController::Base
  before_filter :set_data
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

  def set_data
    @clinic = Admin::Clinic.first
    @pages = Admin::Page.all
    @pages.each do |p|
     if p.name == "Home" and p.status
      @is_home = true
    elsif p.name == "About" and p.status
      @is_about = true
    elsif p.name == "Gallery" and p.status
      @is_gallery = true
    elsif p.name == "Services" and p.status
      @is_services = true
    elsif p.name == "Appointment" and p.status
      @is_appointment = true
    elsif p.name == "Contact Us" and p.status
      @is_contact_us = true 
    end
  end
end
end
