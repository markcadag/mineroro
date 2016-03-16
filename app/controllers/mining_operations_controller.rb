class MiningOperationsController < ApplicationController
  before_action :set_mining_operation, only: [:show, :edit, :update, :destroy]

  # GET /mining_operations
  # GET /mining_operations.json
  def index
    @mining_operations = MiningOperation.where(mine_id: @current_mine.id, operation_type: params[:operation_type])
    respond_to do |format|
      format.html { }
      format.json { render json: @mining_operations }
    end
  end

  # GET /mining_operations/1
  # GET /mining_operations/1.json
  def show
  end

  # GET /mining_operations/new
  def new
    @mining_operation = MiningOperation.new
  end

  # GET /mining_operations/1/edit
  def edit
  end

  # POST /mining_operations
  # POST /mining_operations.json
  def create
    @mining_operation = MiningOperation.new(mining_operation_params)

    respond_to do |format|
      if @mining_operation.save
        format.html { redirect_to @mining_operation, notice: 'Mining operation was successfully created.' }
        format.json { render :show, status: :created, location: @mining_operation }
      else
        format.html { render :new }
        format.json { render json: @mining_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mining_operations/1
  # PATCH/PUT /mining_operations/1.json
  def update
    respond_to do |format|
      if @mining_operation.update(mining_operation_params)
        format.html { redirect_to @mining_operation, notice: 'Mining operation was successfully updated.' }
        format.json { render :show, status: :ok, location: @mining_operation }
      else
        format.html { render :edit }
        format.json { render json: @mining_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mining_operations/1
  # DELETE /mining_operations/1.json
  def destroy
    @mining_operation.destroy
    respond_to do |format|
      format.html { redirect_to mining_operations_url, notice: 'Mining operation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mining_operation
      @mining_operation = MiningOperation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mining_operation_params
      params.require(:mining_operation).permit(:import_count, :export_count, :export_unit, :import_unit, :status, :stash, :stash_name)
    end
end
