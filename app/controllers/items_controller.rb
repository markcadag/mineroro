class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    # , tunnel_id: params[:tunnel_id]
    @items = Item.where(mine_id: current_mine.id).paginate(:page => params[:page])
    @item = Item.new
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

    if params[:q].present?
      @items = Item.where(mine_id: current_mine.id).paginate(:page => params[:page]).where("name like ?", "%" + params[:q] + "%")
    else
       @items = Item.where(mine_id: current_mine.id).paginate(:page => params[:page])
    end

    @item = Item.new
  end

  # GET /items/1/edit
  def edit
    @items = Item.where(mine_id: current_mine.id).paginate(:page => params[:page])
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.mine = current_mine
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
        format.js
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
        format.js
      else
        format.html { render :edit }
        format.js
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to new_item_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:item_code, :name, :description)
    end
end
