class AttendancesController < ApplicationController
  
  require 'date'

  before_action :create_or_find_attendace, only: [:index]

  def index
    # date =  Time.strptime(params[:attendance_date], '%m/%d/%Y').strftime('%Y-%m-%d')
    # @attendance = Attendance.where(mine_id: current_mine.id, attendance_date: date).first
    @attendances = CheckAttendance.joins(:miner).where(attendance_id: @attendance.id).paginate(:page => params[:page])
    respond_to do |format|
      format.html 
      format.json { render json: @attendances.as_json(:include => [:miner]) }
    end
  end

  def generate_attendance
    date =  Time.strptime(params[:attendance_date], '%m/%d/%Y').strftime('%Y-%m-%d')
    if !Attendance.exists?(attendance_date: date)
      @attendance = Attendance.new
      @attendance.mine_id = current_mine.id
      @attendance.tunnel_id = params[:tunnel_id]
      @attendance.attendance_date = Time.strptime(params[:attendance_date], '%m/%d/%Y').strftime('%Y-%m-%d')
      @attendance.miners = Miner.where(mine_id: current_mine.id)
      respond_to do |format|
        if @attendance.save
            format.html { redirect_to :action => "index", :attendance_date => params[:attendance_date]}
            format.json { render json: @attendance.as_json() }
        else
            format.html { render :new }
            format.json { render json: @attendance.errors, status: :unprocessable_entity }
        end
        end
    else
      respond_to do |format|
          format.html { redirect_to :action => "index", :attendance_date => params[:attendance_date]}
          format.json { head :ok }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_expense
  	@expense = Expense.find(params[:id])
  end

  def create_or_find_attendace
    date = Time.strptime(params[:attendance_date], '%m/%d/%Y').strftime('%Y-%m-%d')
    @attendance = Attendance.find_or_initialize_by(mine_id: current_mine.id, attendance_date: date)
    if @attendance.new_record?
       @attendance.miners = Miner.where(mine_id: current_mine.id)
       @attendance.save!
    end
    # @attendance = Attendance.find_or_create_by(mine_id: current_mine.id, attendance_date: date)
  end


    # Never trust parameters from the scary internet, only allow the white list through.
   def attendance_params
      params.require(:attendance).permit(:mine_id, :status, :miner_ids)
   end

end
