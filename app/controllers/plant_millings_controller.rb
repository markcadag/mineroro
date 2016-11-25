class PlantMillingsController < ApplicationController
  before_action :set_plant_milling, only: [:show, :edit, :update, :destroy]

  # GET /plant_millings
  # GET /plant_millings.json
  def index
    @plant_millings = PlantMilling.all
  end

  # GET /plant_millings/1
  # GET /plant_millings/1.json
  def show
  end

  # GET /plant_millings/new
  def new
    @plant_milling = PlantMilling.new
  end

  # GET /plant_millings/1/edit
  def edit
  end

  # POST /plant_millings
  # POST /plant_millings.json
  def create
    @plant_milling = PlantMilling.new(plant_milling_params)

    respond_to do |format|
      if @plant_milling.save
        format.html { redirect_to @plant_milling, notice: 'Plant milling was successfully created.' }
        format.json { render :show, status: :created, location: @plant_milling }
      else
        format.html { render :new }
        format.json { render json: @plant_milling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_millings/1
  # PATCH/PUT /plant_millings/1.json
  def update
    respond_to do |format|
      if @plant_milling.update(plant_milling_params)
        format.html { redirect_to @plant_milling, notice: 'Plant milling was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_milling }
      else
        format.html { render :edit }
        format.json { render json: @plant_milling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_millings/1
  # DELETE /plant_millings/1.json
  def destroy
    @plant_milling.destroy
    respond_to do |format|
      format.html { redirect_to plant_millings_url, notice: 'Plant milling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_milling
      @plant_milling = PlantMilling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_milling_params
      params.require(:plant_milling).permit(:team_id, :milled_from, :milled_to, :ore_count, :ore_weight, :refined_output, :reference_number, :date_sold, :sold_quantity, :unit_price, :revenue, :jdt_trading_share, :plant_charge, :gross_sale, :corp_share, :royalty_share, :miner_share, :contractor_share, :pioneer_share, :msebua_share, :community_fund, :remarks, :notes, :mine_id, :updated_by, :created_by, :control_number, :tunnel_id)
    end
end
