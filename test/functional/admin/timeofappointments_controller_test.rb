require 'test_helper'

class Admin::TimeofappointmentsControllerTest < ActionController::TestCase
  setup do
    @admin_timeofappointment = admin_timeofappointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_timeofappointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_timeofappointment" do
    assert_difference('Admin::Timeofappointment.count') do
      post :create, admin_timeofappointment: { toa: @admin_timeofappointment.toa }
    end

    assert_redirected_to admin_timeofappointment_path(assigns(:admin_timeofappointment))
  end

  test "should show admin_timeofappointment" do
    get :show, id: @admin_timeofappointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_timeofappointment
    assert_response :success
  end

  test "should update admin_timeofappointment" do
    put :update, id: @admin_timeofappointment, admin_timeofappointment: { toa: @admin_timeofappointment.toa }
    assert_redirected_to admin_timeofappointment_path(assigns(:admin_timeofappointment))
  end

  test "should destroy admin_timeofappointment" do
    assert_difference('Admin::Timeofappointment.count', -1) do
      delete :destroy, id: @admin_timeofappointment
    end

    assert_redirected_to admin_timeofappointments_path
  end
end
