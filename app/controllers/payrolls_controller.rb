class PayrollsController < ApplicationController
  before_action :set_payroll, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :query_payroll, only: [:index, :create_report]

  # GET /payrolls
  # GET /payrolls.json
  def index
  end


  def create_report
    # @payrolls = Payroll.by_month(12, field: :end_date)
    respond_to do |format| 
       format.xlsx {render "payrolls/index.xlsx.axlsx"}
    end
  end

  # GET /payrolls/1
  # GET /payrolls/1.json
  def show
  end

  # GET /payrolls/new
  def new
    @payroll = Payroll.new
    1.times { @payroll.payroll_datums.build }
  end

  # GET /payrolls/1/edit
  def edit
  end

  # POST /payrolls
  # POST /payrolls.json
  def create
    @payroll = Payroll.new(payroll_params)
    respond_to do |format|
      if @payroll.save
        format.html { redirect_to @payroll, notice: 'Payroll was successfully created.' }
        format.json { render :show, status: :created, location: @payroll }
      else
        format.html { render :new }
        format.json { render json: @payroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payrolls/1
  # PATCH/PUT /payrolls/1.json
  def update
    respond_to do |format|
      if @payroll.update(payroll_params)
        format.html { redirect_to @payroll, notice: 'Payroll was successfully updated.' }
        format.json { render :show, status: :ok, location: @payroll }
      else
        format.html { render :edit }
        format.json { render json: @payroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payrolls/1
  # DELETE /payrolls/1.json
  def destroy
    @payroll.destroy
    respond_to do |format|
      format.html { redirect_to payrolls_url, notice: 'Payroll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payroll
      @payroll = Payroll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payroll_params
      params.require(:payroll).permit!
    end

    def query_payroll
      if params[:by_date].nil? 
      @payrolls = Payroll.includes(:payroll_datums).all
      else
        if params[:by_date]['by_date(2i)'].present? && params[:by_date]['by_date(1i)'].present?
          @payrolls = Payroll.by_month(params[:by_date]['by_date(2i)'], year: params[:by_date]['by_date(1i)'], field: :end_date).includes(:payroll_datums)
        elsif params[:by_date]['by_date(2i)'].present?
          @payrolls = Payroll.by_month(params[:by_date]['by_date(2i)'],field: :end_date).includes(:payroll_datums)
        elsif params[:by_date]['by_date(1i)'].present?
          @payrolls = Payroll.by_month(params[:by_date]['by_date(1i)'],field: :end_date).includes(:payroll_datums)
        else
          @payrolls = Payroll.includes(:payroll_datums).all
        end
      end
    end

  

end
