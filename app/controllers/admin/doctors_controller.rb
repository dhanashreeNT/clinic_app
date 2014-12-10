class Admin::DoctorsController < ApplicationController
  before_filter :set_admin_doctor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @admin_doctors = Admin::Doctor.all
    respond_with(@admin_doctors)
  end

  def show
    respond_with(@admin_doctor)
  end

  def new
    @admin_doctor = Admin::Doctor.new
    respond_with(@admin_doctor)
  end

  def edit
  end

  def create
    @admin_doctor = Admin::Doctor.new(params[:admin_doctor])
    @admin_doctor.save
    respond_with(@admin_doctor)
  end

  def update
    @admin_doctor.update_attributes(params[:admin_doctor])
    respond_with(@admin_doctor)
  end

  def destroy
    @admin_doctor.profile_pic = nil
    @admin_doctor.destroy
    respond_with(@admin_doctor)
  end

  private
    def set_admin_doctor
      @admin_doctor = Admin::Doctor.find(params[:id])
    end
end
