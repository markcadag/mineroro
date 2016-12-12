require 'test_helper'

class PayrollDataControllerTest < ActionController::TestCase
  setup do
    @payroll_datum = payroll_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payroll_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payroll_datum" do
    assert_difference('PayrollDatum.count') do
      post :create, payroll_datum: { deduction: @payroll_datum.deduction, employee_id: @payroll_datum.employee_id, net: @payroll_datum.net, payroll_id: @payroll_datum.payroll_id, salary: @payroll_datum.salary }
    end

    assert_redirected_to payroll_datum_path(assigns(:payroll_datum))
  end

  test "should show payroll_datum" do
    get :show, id: @payroll_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payroll_datum
    assert_response :success
  end

  test "should update payroll_datum" do
    patch :update, id: @payroll_datum, payroll_datum: { deduction: @payroll_datum.deduction, employee_id: @payroll_datum.employee_id, net: @payroll_datum.net, payroll_id: @payroll_datum.payroll_id, salary: @payroll_datum.salary }
    assert_redirected_to payroll_datum_path(assigns(:payroll_datum))
  end

  test "should destroy payroll_datum" do
    assert_difference('PayrollDatum.count', -1) do
      delete :destroy, id: @payroll_datum
    end

    assert_redirected_to payroll_data_path
  end
end
