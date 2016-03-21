class AttendancesController < ApplicationController

  def index
    @attendance = Attendance.where(mine_id: current_mine.id).order('created_at DESC').by_day
    @miners = Miner.includes(:attendances).where(mine_id: current_mine.id).paginate(:page => params[:page])
    respond_to do |format|
      format.html 
      format.json { render json: @attendance.as_json() }
    end
  end

  def generate_attendance
    #check if attendance exist
    @attendance = Attendance.new
    @attendance.mine_id = current_mine.id
    @attendance.tunnel_id = params[:tunnel_id]
    @attendance.attendance_date = params[:attendance_date]
    @attendance.miners = Miner.where(mine_id: current_mine.id)
    if @attendance.save
      format.html
      format.json { render :show, status: :created, location: @role }
    else
      format.html { render :new }
      format.json { render json: @attendance.errors, status: :unprocessable_entity }
    end
  end

  def set_all_present
    Attendance.where()
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
