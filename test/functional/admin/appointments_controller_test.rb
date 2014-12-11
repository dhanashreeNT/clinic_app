require 'test_helper'

class Admin::AppointmentsControllerTest < ActionController::TestCase
  setup do
    @admin_appointment = admin_appointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_appointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_appointment" do
    assert_difference('Admin::Appointment.count') do
      post :create, admin_appointment: { address: @admin_appointment.address, conatact_num: @admin_appointment.conatact_num, email: @admin_appointment.email, first_name: @admin_appointment.first_name, last_name: @admin_appointment.last_name }
    end

    assert_redirected_to admin_appointment_path(assigns(:admin_appointment))
  end

  test "should show admin_appointment" do
    get :show, id: @admin_appointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_appointment
    assert_response :success
  end

  test "should update admin_appointment" do
    put :update, id: @admin_appointment, admin_appointment: { address: @admin_appointment.address, conatact_num: @admin_appointment.conatact_num, email: @admin_appointment.email, first_name: @admin_appointment.first_name, last_name: @admin_appointment.last_name }
    assert_redirected_to admin_appointment_path(assigns(:admin_appointment))
  end

  test "should destroy admin_appointment" do
    assert_difference('Admin::Appointment.count', -1) do
      delete :destroy, id: @admin_appointment
    end

    assert_redirected_to admin_appointments_path
  end
end
