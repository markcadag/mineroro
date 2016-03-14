class MinesController < ApplicationController
  before_action :set_mine, only: [:show, :edit, :update, :destroy]

  # GET /mines
  # GET /mines.json
  def index
    @mines = current_mine
     respond_to do |format|
      format.html
      format.json { render json: @mines.as_json(:include => [:miners, :tunnels] ) }
    end
  end

  # GET /mines/1
  # GET /mines/1.json
  def show
  end

  # GET /mines/new
  def new
    @mine = Mine.new
  end

  # GET /mines/1/edit
  def edit
  end

  # POST /mines
  # POST /mines.json
  def create
    @mine = Mine.new(mine_params)

    respond_to do |format|
      if @mine.save
        format.html { redirect_to @mine, notice: 'Mine was successfully created.' }
        format.json { render :show, status: :created, location: @mine }
      else
        format.html { render :new }
        format.json { render json: @mine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mines/1
  # PATCH/PUT /mines/1.json
  def update
    respond_to do |format|
      if @mine.update(mine_params)
        format.html { redirect_to @mine, notice: 'Mine was successfully updated.' }
        format.json { render :show, status: :ok, location: @mine }
      else
        format.html { render :edit }
        format.json { render json: @mine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mines/1
  # DELETE /mines/1.json
  def destroy
    @mine.destroy
    respond_to do |format|
      format.html { redirect_to mines_url, notice: 'Mine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mine
      @mine = Mine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mine_params
      params.fetch(:mine, {})
    end
end
