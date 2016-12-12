class DashboardController < ApplicationController

  before_filter :authenticate_user!

  def index
  	@total_sacks_today = TunnelOperation.where(mine_id: current_mine.id, operation_type: 'site').by_day.sum :production_count
  	@total_fund_req_plant_today = Expense.where(mine_id: current_mine.id, status: 'pending', category: 'plant').by_day.count
  	@total_fund_req_site_today = Expense.where(mine_id: current_mine.id, status: 'pending', category: 'site').by_day.count
  	@total_yield = TunnelOperation.where(mine_id: current_mine.id, operation_type: 'plant').by_day.sum :production_count
  end
end
