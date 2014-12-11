class Admin::TimeofappointmentsController < ApplicationController
  before_filter :set_admin_timeofappointment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @admin_timeofappointments = Admin::Timeofappointment.all
    respond_with(@admin_timeofappointments)
  end

  def show
    respond_with(@admin_timeofappointment)
  end

  def new
    @admin_timeofappointment = Admin::Timeofappointment.new
    respond_with(@admin_timeofappointment)
  end

  def edit
  end

  def create
    @admin_timeofappointment = Admin::Timeofappointment.new(params[:admin_timeofappointment])
    @admin_timeofappointment.save
    respond_with(@admin_timeofappointment)
  end

  def update
    @admin_timeofappointment.update_attributes(params[:admin_timeofappointment])
    respond_with(@admin_timeofappointment)
  end

  def destroy
    @admin_timeofappointment.destroy
    respond_with(@admin_timeofappointment)
  end

  private
    def set_admin_timeofappointment
      @admin_timeofappointment = Admin::Timeofappointment.find(params[:id])
    end
end
