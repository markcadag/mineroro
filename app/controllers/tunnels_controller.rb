class TunnelsController < ApplicationController
  before_action :set_tunnel, only: [:show, :edit, :update, :destroy]

  # GET /tunnels
  # GET /tunnels.json
  def index
    @tunnels = Tunnel.all
  end

  # GET /tunnels/1
  # GET /tunnels/1.json
  def show
  end

  # GET /tunnels/new
  def new
    @tunnel = Tunnel.new
  end

  # GET /tunnels/1/edit
  def edit
  end

  # POST /tunnels
  # POST /tunnels.json
  def create
    @tunnel = Tunnel.new(tunnel_params)

    respond_to do |format|
      if @tunnel.save
        format.html { redirect_to @tunnel, notice: 'Tunnel was successfully created.' }
        format.json { render :show, status: :created, location: @tunnel }
      else
        format.html { render :new }
        format.json { render json: @tunnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tunnels/1
  # PATCH/PUT /tunnels/1.json
  def update
    respond_to do |format|
      if @tunnel.update(tunnel_params)
        format.html { redirect_to @tunnel, notice: 'Tunnel was successfully updated.' }
        format.json { render :show, status: :ok, location: @tunnel }
      else
        format.html { render :edit }
        format.json { render json: @tunnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tunnels/1
  # DELETE /tunnels/1.json
  def destroy
    @tunnel.destroy
    respond_to do |format|
      format.html { redirect_to tunnels_url, notice: 'Tunnel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tunnel
      @tunnel = Tunnel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tunnel_params
      params.require(:tunnel).permit(:name, :mine_id)
    end
end
