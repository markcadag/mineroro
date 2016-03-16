require 'test_helper'

class MiningOperationsControllerTest < ActionController::TestCase
  setup do
    @mining_operation = mining_operations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mining_operations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mining_operation" do
    assert_difference('MiningOperation.count') do
      post :create, mining_operation: { export_count: @mining_operation.export_count, export_unit: @mining_operation.export_unit, import_count: @mining_operation.import_count, import_unit: @mining_operation.import_unit, stash: @mining_operation.stash, stash_name: @mining_operation.stash_name, status: @mining_operation.status }
    end

    assert_redirected_to mining_operation_path(assigns(:mining_operation))
  end

  test "should show mining_operation" do
    get :show, id: @mining_operation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mining_operation
    assert_response :success
  end

  test "should update mining_operation" do
    patch :update, id: @mining_operation, mining_operation: { export_count: @mining_operation.export_count, export_unit: @mining_operation.export_unit, import_count: @mining_operation.import_count, import_unit: @mining_operation.import_unit, stash: @mining_operation.stash, stash_name: @mining_operation.stash_name, status: @mining_operation.status }
    assert_redirected_to mining_operation_path(assigns(:mining_operation))
  end

  test "should destroy mining_operation" do
    assert_difference('MiningOperation.count', -1) do
      delete :destroy, id: @mining_operation
    end

    assert_redirected_to mining_operations_path
  end
end
