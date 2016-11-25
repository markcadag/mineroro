require 'test_helper'

class PlantMillingsControllerTest < ActionController::TestCase
  setup do
    @plant_milling = plant_millings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plant_millings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plant_milling" do
    assert_difference('PlantMilling.count') do
      post :create, plant_milling: { community_fund: @plant_milling.community_fund, contractor_share: @plant_milling.contractor_share, control_number: @plant_milling.control_number, corp_share: @plant_milling.corp_share, created_by: @plant_milling.created_by, date_sold: @plant_milling.date_sold, gross_sale: @plant_milling.gross_sale, jdt_trading_share: @plant_milling.jdt_trading_share, milled_from: @plant_milling.milled_from, milled_to: @plant_milling.milled_to, mine_id: @plant_milling.mine_id, miner_share: @plant_milling.miner_share, msebua_share: @plant_milling.msebua_share, notes: @plant_milling.notes, ore_count: @plant_milling.ore_count, ore_weight: @plant_milling.ore_weight, pioneer_share: @plant_milling.pioneer_share, plant_charge: @plant_milling.plant_charge, reference_number: @plant_milling.reference_number, refined_output: @plant_milling.refined_output, remarks: @plant_milling.remarks, revenue: @plant_milling.revenue, royalty_share: @plant_milling.royalty_share, sold_quantity: @plant_milling.sold_quantity, team_id: @plant_milling.team_id, unit_price: @plant_milling.unit_price, updated_by: @plant_milling.updated_by }
    end

    assert_redirected_to plant_milling_path(assigns(:plant_milling))
  end

  test "should show plant_milling" do
    get :show, id: @plant_milling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plant_milling
    assert_response :success
  end

  test "should update plant_milling" do
    patch :update, id: @plant_milling, plant_milling: { community_fund: @plant_milling.community_fund, contractor_share: @plant_milling.contractor_share, control_number: @plant_milling.control_number, corp_share: @plant_milling.corp_share, created_by: @plant_milling.created_by, date_sold: @plant_milling.date_sold, gross_sale: @plant_milling.gross_sale, jdt_trading_share: @plant_milling.jdt_trading_share, milled_from: @plant_milling.milled_from, milled_to: @plant_milling.milled_to, mine_id: @plant_milling.mine_id, miner_share: @plant_milling.miner_share, msebua_share: @plant_milling.msebua_share, notes: @plant_milling.notes, ore_count: @plant_milling.ore_count, ore_weight: @plant_milling.ore_weight, pioneer_share: @plant_milling.pioneer_share, plant_charge: @plant_milling.plant_charge, reference_number: @plant_milling.reference_number, refined_output: @plant_milling.refined_output, remarks: @plant_milling.remarks, revenue: @plant_milling.revenue, royalty_share: @plant_milling.royalty_share, sold_quantity: @plant_milling.sold_quantity, team_id: @plant_milling.team_id, unit_price: @plant_milling.unit_price, updated_by: @plant_milling.updated_by }
    assert_redirected_to plant_milling_path(assigns(:plant_milling))
  end

  test "should destroy plant_milling" do
    assert_difference('PlantMilling.count', -1) do
      delete :destroy, id: @plant_milling
    end

    assert_redirected_to plant_millings_path
  end
end
