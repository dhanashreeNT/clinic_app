require 'test_helper'

class Admin::ClinicsControllerTest < ActionController::TestCase
  setup do
    @admin_clinic = admin_clinics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_clinics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_clinic" do
    assert_difference('Admin::Clinic.count') do
      post :create, admin_clinic: { address: @admin_clinic.address, city: @admin_clinic.city, contact_num: @admin_clinic.contact_num, email: @admin_clinic.email, logo: @admin_clinic.logo, name: @admin_clinic.name }
    end

    assert_redirected_to admin_clinic_path(assigns(:admin_clinic))
  end

  test "should show admin_clinic" do
    get :show, id: @admin_clinic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_clinic
    assert_response :success
  end

  test "should update admin_clinic" do
    put :update, id: @admin_clinic, admin_clinic: { address: @admin_clinic.address, city: @admin_clinic.city, contact_num: @admin_clinic.contact_num, email: @admin_clinic.email, logo: @admin_clinic.logo, name: @admin_clinic.name }
    assert_redirected_to admin_clinic_path(assigns(:admin_clinic))
  end

  test "should destroy admin_clinic" do
    assert_difference('Admin::Clinic.count', -1) do
      delete :destroy, id: @admin_clinic
    end

    assert_redirected_to admin_clinics_path
  end
end
