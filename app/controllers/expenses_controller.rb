class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update]

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = Expense.all.order('created_at DESC')
    @tunnels = @current_mine.tunnels;
    respond_to do |format|
      format.html 
      format.json { render json: @expenses.as_json(:include => [:tunnels] ) }
    end
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
    respond_to do |format|
        format.html
        format.json { render :json => @expense }
    end
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)
    # @expense.user_id = current_user.id
    @expense.mine_id = @current_mine.id
    @tunnels = @current_mine.tunnels
    tunnels = params[:expense][:tunnels]
    tunnels.each do |tunnel|
      if tunnel.present?
        tun = Tunnel.find(tunnel)
        if @tunnels.include? tun
          @expense.tunnels << tun
        end
      end
    end

    respond_to do |format|
      if @expense.save
        format.html { redirect_to @expense, notice: 'Expense was successfully created.' }
        format.json
        format.js
      else
        format.html { render :new }
        format.js { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy_multiple
    Expense.where(:id => params[:expenses]).destroy_all
    respond_to do |format|
      format.json { head :no_content }
      format.js
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:name, :amount, :quantity, :unit, :category, :description, :tunnels)
    end
end
