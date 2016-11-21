require 'test_helper'

class PersonnelCategoriesControllerTest < ActionController::TestCase
  setup do
    @personnel_category = personnel_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personnel_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personnel_category" do
    assert_difference('PersonnelCategory.count') do
      post :create, personnel_category: { name: @personnel_category.name }
    end

    assert_redirected_to personnel_category_path(assigns(:personnel_category))
  end

  test "should show personnel_category" do
    get :show, id: @personnel_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personnel_category
    assert_response :success
  end

  test "should update personnel_category" do
    patch :update, id: @personnel_category, personnel_category: { name: @personnel_category.name }
    assert_redirected_to personnel_category_path(assigns(:personnel_category))
  end

  test "should destroy personnel_category" do
    assert_difference('PersonnelCategory.count', -1) do
      delete :destroy, id: @personnel_category
    end

    assert_redirected_to personnel_categories_path
  end
end
