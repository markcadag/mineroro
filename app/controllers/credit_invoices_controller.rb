class CreditInvoicesController < ApplicationController
  before_action :set_credit_invoice, only: [:show, :edit, :update, :destroy]

  # GET /credit_invoices
  # GET /credit_invoices.json
  def index
    @credit_invoices = CreditInvoice.all
  end

  # GET /credit_invoices/1
  # GET /credit_invoices/1.json
  def show
    @invoice = Invoice.find(params[:id]).includes(:invoice_items => :items)
  end

  # GET /credit_invoices/new
  def new
    @credit_invoice = CreditInvoice.new
    @liability = Plutus::Account.all
  end

  # GET /credit_invoices/1/edit
  def edit
  end

  # POST /credit_invoices
  # POST /credit_invoices.json
  def create
    @credit_invoice = CreditInvoice.new(credit_invoice_params)

    respond_to do |format|
      if @credit_invoice.save
        format.html { redirect_to @credit_invoice, notice: 'Credit invoice was successfully created.' }
        format.json { render :show, status: :created, location: @credit_invoice }
      else
        format.html { render :new }
        format.json { render json: @credit_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credit_invoices/1
  # PATCH/PUT /credit_invoices/1.json
  def update
    respond_to do |format|
      if @credit_invoice.update(credit_invoice_params)
        format.html { redirect_to @credit_invoice, notice: 'Credit invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @credit_invoice }
      else
        format.html { render :edit }
        format.json { render json: @credit_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_invoices/1
  # DELETE /credit_invoices/1.json
  def destroy
    @credit_invoice.destroy
    respond_to do |format|
      format.html { redirect_to credit_invoices_url, notice: 'Credit invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_invoice
      @credit_invoice = CreditInvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credit_invoice_params
      params.require(:credit_invoice).permit(:title, :code, :value_date, :due_date, :duration_from, :duration_to, :remarks)
    end
end
