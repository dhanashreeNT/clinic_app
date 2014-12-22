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

  def change_status
    @status = params[:status] || 'pending'
    @appointment = Admin::Appointment.find_by_id(params[:id])
    @appointment.set_status(@status)
    respond_to do |format|
      format.html {}
      format.js {render :change_status}
    end
  end

  def create
    @admin_appointment = Admin::Appointment.new(params[:admin_appointment])
    @admin_appointment.save
    AppointmentMailer.created_appointment_email(@admin_appointment).deliver
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
