class MinersController < ApplicationController
  before_action :set_miner, only: [:show, :edit, :update, :destroy]
  # before_action :set_mine, only: [:index]
  # GET /roles
  # GET /roles.json
  def index
    @miners = Miner.all
    session[:mine_id] = 1
    # session.clear
    @mine = current_mine
     respond_to do |format|
      format.html
      format.json { render json: @miners.as_json() }
    end
  end

  # GET /roles/1
  # GET /roles/1.json
  def show
  end

  # GET /roles/new
  def new
    @miner = Miner.new
  end

  # GET /roles/1/edit
  def edit
  end

  # POST /roles
  # POST /roles.json
  def create
    @miner = Miner.new(miner_params)
    respond_to do |format|
      if @miner.save
        format.html { redirect_to @miner, notice: 'Miner was successfully created.' }
        format.json { render :show, status: :created, location: @miner }
      else
        format.html { render :new }
        format.json { render json: @miner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roles/1
  # PATCH/PUT /roles/1.json
  def update
    respond_to do |format|
      if @miner.update(miner_params)
        format.html { redirect_to @miner, notice: 'Miner was successfully updated.' }
        format.json { render :show, status: :ok, location: @miner }
      else
        format.html { render :edit }
        format.json { render json: @miner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/1
  # DELETE /roles/1.json
  def destroy
    @miner.destroy
    respond_to do |format|
      format.html { redirect_to roles_url, notice: 'Miner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miner
      @miner = Miner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miner_params
      params.require(:miner).permit(:first_name, :last_name, :mine_id)
    end
end
