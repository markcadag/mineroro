require 'test_helper'

class TunnelOperationsControllerTest < ActionController::TestCase
  setup do
    @tunnel_operation = tunnel_operations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tunnel_operations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tunnel_operation" do
    assert_difference('TunnelOperation.count') do
      post :create, tunnel_operation: { created_by: @tunnel_operation.created_by, export_count: @tunnel_operation.export_count, export_name: @tunnel_operation.export_name, mine_id: @tunnel_operation.mine_id, operation_type: @tunnel_operation.operation_type, production_count: @tunnel_operation.production_count, production_name: @tunnel_operation.production_name, status: @tunnel_operation.status, stock_pile: @tunnel_operation.stock_pile, stock_pile_name: @tunnel_operation.stock_pile_name, tunnel_id: @tunnel_operation.tunnel_id, updated_by: @tunnel_operation.updated_by }
    end

    assert_redirected_to tunnel_operation_path(assigns(:tunnel_operation))
  end

  test "should show tunnel_operation" do
    get :show, id: @tunnel_operation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tunnel_operation
    assert_response :success
  end

  test "should update tunnel_operation" do
    patch :update, id: @tunnel_operation, tunnel_operation: { created_by: @tunnel_operation.created_by, export_count: @tunnel_operation.export_count, export_name: @tunnel_operation.export_name, mine_id: @tunnel_operation.mine_id, operation_type: @tunnel_operation.operation_type, production_count: @tunnel_operation.production_count, production_name: @tunnel_operation.production_name, status: @tunnel_operation.status, stock_pile: @tunnel_operation.stock_pile, stock_pile_name: @tunnel_operation.stock_pile_name, tunnel_id: @tunnel_operation.tunnel_id, updated_by: @tunnel_operation.updated_by }
    assert_redirected_to tunnel_operation_path(assigns(:tunnel_operation))
  end

  test "should destroy tunnel_operation" do
    assert_difference('TunnelOperation.count', -1) do
      delete :destroy, id: @tunnel_operation
    end

    assert_redirected_to tunnel_operations_path
  end
end
