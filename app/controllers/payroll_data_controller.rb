class PayrollDataController < ApplicationController
  before_action :set_payroll_datum, only: [:show, :edit, :update, :destroy]

  # GET /payroll_data
  # GET /payroll_data.json
  def index
    @payroll_data = PayrollDatum.all
  end

  # GET /payroll_data/1
  # GET /payroll_data/1.json
  def show
  end

  # GET /payroll_data/new
  def new
    @payroll_datum = PayrollDatum.new
  end

  # GET /payroll_data/1/edit
  def edit
  end

  # POST /payroll_data
  # POST /payroll_data.json
  def create
    @payroll_datum = PayrollDatum.new(payroll_datum_params)

    respond_to do |format|
      if @payroll_datum.save
        format.html { redirect_to @payroll_datum, notice: 'Payroll datum was successfully created.' }
        format.json { render :show, status: :created, location: @payroll_datum }
      else
        format.html { render :new }
        format.json { render json: @payroll_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payroll_data/1
  # PATCH/PUT /payroll_data/1.json
  def update
    respond_to do |format|
      if @payroll_datum.update(payroll_datum_params)
        format.html { redirect_to @payroll_datum, notice: 'Payroll datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @payroll_datum }
      else
        format.html { render :edit }
        format.json { render json: @payroll_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payroll_data/1
  # DELETE /payroll_data/1.json
  def destroy
    @payroll_datum.destroy
    respond_to do |format|
      format.html { redirect_to payroll_data_url, notice: 'Payroll datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payroll_datum
      @payroll_datum = PayrollDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payroll_datum_params
      params.require(:payroll_datum).permit(:employee_id, :payroll_id, :salary, :deduction, :net)
    end
end
