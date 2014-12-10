class Admin::GalleriesController < ApplicationController
  before_filter :set_admin_gallery, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @admin_galleries = Admin::Gallery.all
    respond_with(@admin_galleries)
  end

  def show
    respond_with(@admin_gallery)
  end

  def new
    @admin_gallery = Admin::Gallery.new
    respond_with(@admin_gallery)
  end

  def edit
  end

  def create
    @admin_gallery = Admin::Gallery.new(params[:admin_gallery])
    @admin_gallery.save
    respond_with(@admin_gallery)
  end

  def update
    @admin_gallery.update_attributes(params[:admin_gallery])
    respond_with(@admin_gallery)
  end

  def destroy
    @admin_gallery.destroy
    respond_with(@admin_gallery)
  end

  private
    def set_admin_gallery
      @admin_gallery = Admin::Gallery.find(params[:id])
    end
end
