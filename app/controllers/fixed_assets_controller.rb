class FixedAssetsController < ApplicationController
  before_action :set_fixed_asset, only: [:show, :edit, :update, :destroy]

  # GET /fixed_assets
  # GET /fixed_assets.json
  def index
    @fixed_assets = FixedAsset.all
  end

  # GET /fixed_assets/1
  # GET /fixed_assets/1.json
  def show
  end

  # GET /fixed_assets/new
  def new
    @fixed_asset = FixedAsset.new
  end

  # GET /fixed_assets/1/edit
  def edit
  end

  # POST /fixed_assets
  # POST /fixed_assets.json
  def create
    @fixed_asset = FixedAsset.new(fixed_asset_params)

    respond_to do |format|
      if @fixed_asset.save
        format.html { redirect_to @fixed_asset, notice: 'Fixed asset was successfully created.' }
        format.json { render :show, status: :created, location: @fixed_asset }
      else
        format.html { render :new }
        format.json { render json: @fixed_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fixed_assets/1
  # PATCH/PUT /fixed_assets/1.json
  def update
    respond_to do |format|
      if @fixed_asset.update(fixed_asset_params)
        format.html { redirect_to @fixed_asset, notice: 'Fixed asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @fixed_asset }
      else
        format.html { render :edit }
        format.json { render json: @fixed_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixed_assets/1
  # DELETE /fixed_assets/1.json
  def destroy
    @fixed_asset.destroy
    respond_to do |format|
      format.html { redirect_to fixed_assets_url, notice: 'Fixed asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixed_asset
      @fixed_asset = FixedAsset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fixed_asset_params
      params.require(:fixed_asset).permit(:category, :date_purchased, :quantity, :amount, :remarks, :item_code, :location)
    end
end
