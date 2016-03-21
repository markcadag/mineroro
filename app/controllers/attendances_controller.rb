class AttendancesController < ApplicationController

  def index
    @attendace = Attendance.where(mine_id: current_mine.id).order('created_at DESC').by_month
    @miners = Miner.includes(:attendances).where(mine_id: current_mine.id,)
    respond_to do |format|
      format.html 
      format.json { render json: @miners.as_json() }
    end
  end

  def update_multiple
  	miners = params[:miner_ids]
    miners.each do |miner|
  		Attendance.where(miner_id: params[:miner_id], mine_id: current_mine.id).update_or_create(miner_id: params[:miner_id], mine_id: params[:mine_id], status: 'present')
	  end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_expense
  	@expense = Expense.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
   def attendance_params
      params.require(:attendance).permit(:mine_id, :status, :miner_ids)
   end

end
