class CheckAttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]

  # GET /check_attendances
  # GET /check_attendances.json
  def index
    @check_attendances = CheckAttendance.where(mine_id: current_mine.id)
    respond_to do |format|
      format.html
      format.json { render json: @check_attendances }
    end
  end

  # GET /check_attendances/1
  # GET /check_attendances/1.json
  def show
  end

  # GET /check_attendances/new
  def new
    @check_attendance = CheckAttendance.new
  end

  # GET /check_attendances/1/edit
  def edit
  end

  # POST /check_attendances
  # POST /check_attendances.json
  def create
    @check_attendance = CheckAttendance.new(check_attendance_params)

    respond_to do |format|
      if @check_attendance.save
        format.html { redirect_to @check_attendance, notice: 'Attendance was successfully created.' }
        format.json { render :show, status: :created, location: @check_attendance }
      else
        format.html { render :new }
        format.json { render json: @check_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_attendances/1
  # PATCH/PUT /check_attendances/1.json
  def update
    respond_to do |format|
      if @check_attendance.update(check_attendance_params)
        format.js
      else
        format.html { render :edit }
        format.json { render json: @check_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @check_attendance = CheckAttendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_attendance_params
      params.require(:check_attendance).permit(:attendance_type)
    end
end
