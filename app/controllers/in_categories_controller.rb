class InCategoriesController < ApplicationController
  before_action :set_in_category, only: [:show, :edit, :update, :destroy]

  # GET /in_categories
  # GET /in_categories.json
  def index
    @in_categories = InCategory.all
  end

  # GET /in_categories/1
  # GET /in_categories/1.json
  def show
  end

  # GET /in_categories/new
  def new
    @in_category = InCategory.new
  end

  # GET /in_categories/1/edit
  def edit
  end

  # POST /in_categories
  # POST /in_categories.json
  def create
    @in_category = InCategory.new(in_category_params)

    respond_to do |format|
      if @in_category.save
        format.html { redirect_to @in_category, notice: 'In category was successfully created.' }
        format.json { render :show, status: :created, location: @in_category }
      else
        format.html { render :new }
        format.json { render json: @in_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /in_categories/1
  # PATCH/PUT /in_categories/1.json
  def update
    respond_to do |format|
      if @in_category.update(in_category_params)
        format.html { redirect_to @in_category, notice: 'In category was successfully updated.' }
        format.json { render :show, status: :ok, location: @in_category }
      else
        format.html { render :edit }
        format.json { render json: @in_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /in_categories/1
  # DELETE /in_categories/1.json
  def destroy
    @in_category.destroy
    respond_to do |format|
      format.html { redirect_to in_categories_url, notice: 'In category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_in_category
      @in_category = InCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def in_category_params
      params.require(:in_category).permit(:name)
    end
end
