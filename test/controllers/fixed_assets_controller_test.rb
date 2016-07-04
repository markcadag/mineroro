require 'test_helper'

class FixedAssetsControllerTest < ActionController::TestCase
  setup do
    @fixed_asset = fixed_assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fixed_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fixed_asset" do
    assert_difference('FixedAsset.count') do
      post :create, fixed_asset: { amount: @fixed_asset.amount, category: @fixed_asset.category, date_purchased: @fixed_asset.date_purchased, item_code: @fixed_asset.item_code, location: @fixed_asset.location, quantity: @fixed_asset.quantity, remarks: @fixed_asset.remarks }
    end

    assert_redirected_to fixed_asset_path(assigns(:fixed_asset))
  end

  test "should show fixed_asset" do
    get :show, id: @fixed_asset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fixed_asset
    assert_response :success
  end

  test "should update fixed_asset" do
    patch :update, id: @fixed_asset, fixed_asset: { amount: @fixed_asset.amount, category: @fixed_asset.category, date_purchased: @fixed_asset.date_purchased, item_code: @fixed_asset.item_code, location: @fixed_asset.location, quantity: @fixed_asset.quantity, remarks: @fixed_asset.remarks }
    assert_redirected_to fixed_asset_path(assigns(:fixed_asset))
  end

  test "should destroy fixed_asset" do
    assert_difference('FixedAsset.count', -1) do
      delete :destroy, id: @fixed_asset
    end

    assert_redirected_to fixed_assets_path
  end
end
