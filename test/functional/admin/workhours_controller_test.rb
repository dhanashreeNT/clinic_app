require 'test_helper'

class Admin::WorkhoursControllerTest < ActionController::TestCase
  setup do
    @admin_workhour = admin_workhours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_workhours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_workhour" do
    assert_difference('Admin::Workhour.count') do
      post :create, admin_workhour: { day: @admin_workhour.day, end_time: @admin_workhour.end_time, start_time: @admin_workhour.start_time, weekly_off: @admin_workhour.weekly_off }
    end

    assert_redirected_to admin_workhour_path(assigns(:admin_workhour))
  end

  test "should show admin_workhour" do
    get :show, id: @admin_workhour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_workhour
    assert_response :success
  end

  test "should update admin_workhour" do
    put :update, id: @admin_workhour, admin_workhour: { day: @admin_workhour.day, end_time: @admin_workhour.end_time, start_time: @admin_workhour.start_time, weekly_off: @admin_workhour.weekly_off }
    assert_redirected_to admin_workhour_path(assigns(:admin_workhour))
  end

  test "should destroy admin_workhour" do
    assert_difference('Admin::Workhour.count', -1) do
      delete :destroy, id: @admin_workhour
    end

    assert_redirected_to admin_workhours_path
  end
end
