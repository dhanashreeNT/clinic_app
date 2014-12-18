class Admin::WorkhoursController < ApplicationController
  before_filter :set_admin_workhour, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @admin_workhours = Admin::Workhour.all
    respond_with(@admin_workhours)
  end

  def show
    respond_with(@admin_workhour)
  end

  def new
    @admin_workhour = Admin::Workhour.new
    respond_with(@admin_workhour)
  end

  def edit
  end

  def create
    @admin_workhour = Admin::Workhour.new(params[:admin_workhour])
    @admin_workhour.save
    respond_with(@admin_workhour)
  end

  def update
    @admin_workhour.update_attributes(params[:admin_workhour])
    respond_with(@admin_workhour)
  end

  def destroy
    @admin_workhour.destroy
    respond_with(@admin_workhour)
  end

  private
    def set_admin_workhour
      @admin_workhour = Admin::Workhour.find(params[:id])
    end
end
