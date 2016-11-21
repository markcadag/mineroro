class PersonnelCategoriesController < ApplicationController
  before_action :set_personnel_category, only: [:show, :edit, :update, :destroy]

  # GET /personnel_categories
  # GET /personnel_categories.json
  def index
    @personnel_categories = PersonnelCategory.all
  end

  # GET /personnel_categories/1
  # GET /personnel_categories/1.json
  def show
  end

  # GET /personnel_categories/new
  def new
    @personnel_category = PersonnelCategory.new
  end

  # GET /personnel_categories/1/edit
  def edit
  end

  # POST /personnel_categories
  # POST /personnel_categories.json
  def create
    @personnel_category = PersonnelCategory.new(personnel_category_params)

    respond_to do |format|
      if @personnel_category.save
        format.html { redirect_to @personnel_category, notice: 'Personnel category was successfully created.' }
        format.json { render :show, status: :created, location: @personnel_category }
      else
        format.html { render :new }
        format.json { render json: @personnel_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personnel_categories/1
  # PATCH/PUT /personnel_categories/1.json
  def update
    respond_to do |format|
      if @personnel_category.update(personnel_category_params)
        format.html { redirect_to @personnel_category, notice: 'Personnel category was successfully updated.' }
        format.json { render :show, status: :ok, location: @personnel_category }
      else
        format.html { render :edit }
        format.json { render json: @personnel_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnel_categories/1
  # DELETE /personnel_categories/1.json
  def destroy
    @personnel_category.destroy
    respond_to do |format|
      format.html { redirect_to personnel_categories_url, notice: 'Personnel category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personnel_category
      @personnel_category = PersonnelCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personnel_category_params
      params.require(:personnel_category).permit(:name)
    end
end
