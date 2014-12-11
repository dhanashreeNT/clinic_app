class Admin::ServicesController < ApplicationController
  before_filter :set_admin_service, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @admin_services = Admin::Service.all
    respond_with(@admin_services)
  end

  def show
    respond_with(@admin_service)
  end

  def new
    @admin_service = Admin::Service.new
    respond_with(@admin_service)
  end

  def edit
  end

  def create
    @admin_service = Admin::Service.new(params[:admin_service])
    @admin_service.save
    respond_with(@admin_service)
  end

  def update
    @admin_service.update_attributes(params[:admin_service])
    respond_with(@admin_service)
  end

  def destroy
    @admin_service.destroy
    respond_with(@admin_service)
  end

  private
    def set_admin_service
      @admin_service = Admin::Service.find(params[:id])
    end
end
