require 'test_helper'

class InCategoriesControllerTest < ActionController::TestCase
  setup do
    @in_category = in_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:in_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create in_category" do
    assert_difference('InCategory.count') do
      post :create, in_category: { name: @in_category.name }
    end

    assert_redirected_to in_category_path(assigns(:in_category))
  end

  test "should show in_category" do
    get :show, id: @in_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @in_category
    assert_response :success
  end

  test "should update in_category" do
    patch :update, id: @in_category, in_category: { name: @in_category.name }
    assert_redirected_to in_category_path(assigns(:in_category))
  end

  test "should destroy in_category" do
    assert_difference('InCategory.count', -1) do
      delete :destroy, id: @in_category
    end

    assert_redirected_to in_categories_path
  end
end
