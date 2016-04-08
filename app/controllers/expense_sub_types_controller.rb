class ExpenseSubTypesController < ApplicationController
  before_action :set_expense_sub_type, only: [:show, :edit, :update, :destroy]

  # GET /expense_sub_types
  # GET /expense_sub_types.json
  def index
    @expense_sub_types = ExpenseSubType.all.paginate(:page => params[:page])
  end

  # GET /expense_sub_types/1
  # GET /expense_sub_types/1.json
  def show
  end

  # GET /expense_sub_types/new
  def new
    @expense_sub_type = ExpenseSubType.new
  end

  # GET /expense_sub_types/1/edit
  def edit
  end

  # POST /expense_sub_types
  # POST /expense_sub_types.json
  def create
    @expense_sub_type = ExpenseSubType.new(expense_sub_type_params)

    respond_to do |format|
      if @expense_sub_type.save
        format.html { redirect_to @expense_sub_type, notice: 'Expense sub type was successfully created.' }
        format.json { render :show, status: :created, location: @expense_sub_type }
      else
        format.html { render :new }
        format.json { render json: @expense_sub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expense_sub_types/1
  # PATCH/PUT /expense_sub_types/1.json
  def update
    respond_to do |format|
      if @expense_sub_type.update(expense_sub_type_params)
        format.html { redirect_to @expense_sub_type, notice: 'Expense sub type was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense_sub_type }
      else
        format.html { render :edit }
        format.json { render json: @expense_sub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_sub_types/1
  # DELETE /expense_sub_types/1.json
  def destroy
    @expense_sub_type.destroy
    respond_to do |format|
      format.html { redirect_to expense_sub_types_url, notice: 'Expense sub type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_sub_type
      @expense_sub_type = ExpenseSubType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_sub_type_params
      params.require(:expense_sub_type).permit(:expense_type_id, :name)
    end
end
