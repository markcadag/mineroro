require 'test_helper'

class ExpenseSubTypesControllerTest < ActionController::TestCase
  setup do
    @expense_sub_type = expense_sub_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expense_sub_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expense_sub_type" do
    assert_difference('ExpenseSubType.count') do
      post :create, expense_sub_type: { expense_type_id: @expense_sub_type.expense_type_id }
    end

    assert_redirected_to expense_sub_type_path(assigns(:expense_sub_type))
  end

  test "should show expense_sub_type" do
    get :show, id: @expense_sub_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expense_sub_type
    assert_response :success
  end

  test "should update expense_sub_type" do
    patch :update, id: @expense_sub_type, expense_sub_type: { expense_type_id: @expense_sub_type.expense_type_id }
    assert_redirected_to expense_sub_type_path(assigns(:expense_sub_type))
  end

  test "should destroy expense_sub_type" do
    assert_difference('ExpenseSubType.count', -1) do
      delete :destroy, id: @expense_sub_type
    end

    assert_redirected_to expense_sub_types_path
  end
end
