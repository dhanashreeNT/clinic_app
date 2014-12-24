class Public::StaticpagesController < ApplicationController
  def home
    @services = Admin::Service.limit(3)
  end

  def about
    @team_members = Admin::Doctor.all
  end

  def gallery
    @images = Admin::Gallery.all
  end

  def services
    @services = Admin::Service.all
  end

  def service
    @service = Admin::Service.find(params[:id])
  end

  def book_appointment
    @admin_appointment = Admin::Appointment.new
  end

  def save_appointment

  end
  
  def contact_us
  end
end
