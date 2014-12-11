class Admin::AppointmentsController < ApplicationController
  before_filter :set_admin_appointment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @admin_appointments = Admin::Appointment.all
    respond_with(@admin_appointments)
  end

  def show
    respond_with(@admin_appointment)
  end

  def new
    @admin_appointment = Admin::Appointment.new
    respond_with(@admin_appointment)
  end

  def edit
  end

  def create
    @admin_appointment = Admin::Appointment.new(params[:admin_appointment])
    @admin_appointment.save
    respond_with(@admin_appointment)
  end

  def update
    @admin_appointment.update_attributes(params[:admin_appointment])
    respond_with(@admin_appointment)
  end

  def destroy
    @admin_appointment.destroy
    respond_with(@admin_appointment)
  end

  private
    def set_admin_appointment
      @admin_appointment = Admin::Appointment.find(params[:id])
    end
end
