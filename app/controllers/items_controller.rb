class ItemsController < ApplicationController
  before_action :set_Item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    # , tunnel_id: params[:tunnel_id]
    @items = Item.where(mine_id: current_mine.id).paginate(:page => params[:page])
    @Item = Item.new
    respond_to do |format|
      format.html
      format.json { render json: @items }
      format.js
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @Item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @Item = Item.new(Item_params)

    respond_to do |format|
      if @Item.save
        format.html { redirect_to @Item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @Item }
        format.js
      else
        format.html { render :new }
        format.json { render json: @Item.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @Item.update(Item_params)
        format.html { redirect_to @Item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @Item }
      else
        format.html { render :edit }
        format.json { render json: @Item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @Item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Item
      @Item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def Item_params
      params.require(:Item).permit(:quantity, :amount)
    end
end
