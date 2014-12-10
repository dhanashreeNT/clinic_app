class Admin::ClinicsController < ApplicationController
  before_filter :set_admin_clinic, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!
  respond_to :html

  def index
    @admin_clinics = Admin::Clinic.all
    respond_with(@admin_clinics)
  end

  def show
    respond_with(@admin_clinic)
  end

  def new
    @admin_clinic = Admin::Clinic.new
    respond_with(@admin_clinic)
  end

  def edit
  end

  def create
    @admin_clinic = Admin::Clinic.new(params[:admin_clinic])
    

    respond_to do |format|
    if @admin_clinic.save
      format.html { redirect_to @admin_clinic, notice: 'Clinic was successfully created.' }
      format.json { render json: @admin_clinic, status: :created, location: @admin_clinic }
    else
      format.html { render action: "new" }
      format.json { render json: @admin_clinic.errors, status: :unprocessable_entity }
    end
   end  

  end

  def update
    @admin_clinic.update_attributes(params[:admin_clinic])
    respond_with(@admin_clinic)
  end

  def destroy
    
   
    @admin_clinic.clinic_logo = nil
    respond_to do |format|
    if @admin_clinic.destroy
      format.html { redirect_to @admin_clinic, notice: 'Clinic was successfully deleted.' }
      format.json { render json: @admin_clinic, status: :created, location: @admin_clinic }
    else
      format.html { render action: "index" }
      format.json { render json: @admin_clinic.errors, status: :unprocessable_entity }
    end
   end  

  end

  private
    def set_admin_clinic
      @admin_clinic = Admin::Clinic.find(params[:id])
    end
end
