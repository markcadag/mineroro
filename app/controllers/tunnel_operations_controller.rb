class TunnelOperationsController < ApplicationController
  before_action :set_tunnel_operation, only: [:show, :edit, :update, :destroy]

  # GET /tunnel_operations
  # GET /tunnel_operations.json
  def index
    @tunnel_operation = TunnelOperation.where(tunnel_id: params[:tunnel_id], mine_id: current_mine.id).by_day.first
    @total_ores = TunnelOperation.where(mine_id: current_mine.id).sum :production_count
    @tunnel_operations = TunnelOperation.where(tunnel_id: params[:tunnel_id]).by_month
    respond_to do |format|
      format.html
      format.json { render json: @tunnel_operations.as_json(:include => [:tunnel => {:only => :name, :include => :expenses}] ) }
    end
  end

  # GET /tunnel_operations/1
  # GET /tunnel_operations/1.json
  def show
  end

  # GET /tunnel_operations/new
  def new
    @tunnel_operation = TunnelOperation.new
  end

  # GET /tunnel_operations/1/edit
  def edit
  end

  # POST /tunnel_operations
  # POST /tunnel_operations.json
  def create
    @tunnel_operation = TunnelOperation.new(tunnel_operation_params)
    @tunnel_operation.stock_pile = (params[:production_count] - params[:export_count])
    @tunnel_operation.stock_name = params[:production_name]
    respond_to do |format|
      if @tunnel_operation.save
        format.html { redirect_to @tunnel_operation, notice: 'Tunnel operation was successfully created.' }
        format.json { render :show, status: :created, location: @tunnel_operation }
      else
        format.html { render :new }
        format.json { render json: @tunnel_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tunnel_operations/1
  # PATCH/PUT /tunnel_operations/1.json
  def update
    respond_to do |format|
      if @tunnel_operation.update(tunnel_operation_params)
        format.html { redirect_to @tunnel_operation, notice: 'Tunnel operation was successfully updated.' }
        format.json { render :show, status: :ok, location: @tunnel_operation }
      else
        format.html { render :edit }
        format.json { render json: @tunnel_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tunnel_operations/1
  # DELETE /tunnel_operations/1.json
  def destroy
    @tunnel_operation.destroy
    respond_to do |format|
      format.html { redirect_to tunnel_operations_url, notice: 'Tunnel operation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tunnel_operation
      @tunnel_operation = TunnelOperation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tunnel_operation_params
      params.require(:tunnel_operation).permit(:production_count, :production_name, :export_count, :export_name, :status, :updated_by, :created_by, :tunnel_id, :mine_id, :operation_type)
    end
end
