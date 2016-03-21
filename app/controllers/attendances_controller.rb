class AttendancesController < ApplicationController

  
  def index
    @attendace = Attendance.where(mine_id: current_mine.id).order('created_at DESC').by_month
    @expense_requests = Expense.where(mine_id: current_mine.id).order('created_at DESC').by_month
    @miners = Miner.where(mine_id: current_mine.id)
    gon.watch.expenses = @expenses
    @tunnels = @current_mine.tunnels;
    respond_to do |format|
      format.html 
      format.json { render json: @expenses.as_json(:include => [:tunnels, :user] ) }
    end
  end

end
