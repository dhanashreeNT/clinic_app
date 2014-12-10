class Admin::PagesController < ApplicationController
  before_filter :set_admin_page, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @admin_pages = Admin::Page.all
    respond_with(@admin_pages)
  end

  def show
    respond_with(@admin_page)
  end

  def new
    @admin_page = Admin::Page.new
    respond_with(@admin_page)
  end

  def edit
  end

  def create
    @admin_page = Admin::Page.new(params[:admin_page])
    @admin_page.save
    respond_with(@admin_page)
  end

  def update
    @admin_page.update_attributes(params[:admin_page])
    respond_with(@admin_page)
  end

  def destroy
    @admin_page.destroy
    respond_with(@admin_page)
  end

  private
    def set_admin_page
      @admin_page = Admin::Page.find(params[:id])
    end
end
