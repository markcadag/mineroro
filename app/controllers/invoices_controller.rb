class InvoicesController < ApplicationController
  before_action :set_invoice, only: [:show, :edit, :update, :destroy]
  before_action :set_entry, only: [:destroy, :update]
  before_filter :authenticate_user!
  # GET /invoices
  # GET /invoices.json
  def index
    @invoices = Invoice.all
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
  end

  # GET /invoices/new
  def new

    @invoice = Invoice.new
    @credit_invoice = CreditInvoice.new
    @invoice.invoice_items.build
    @invoice.debit_invoices.build
    @entries = Plutus::Entry.limit(100).by_month.order('created_at DESC').limit(10)
    @credit_lists = Plutus::Account.where(:type => ["Plutus::Liability", "Plutus::Equity", "Plutus::Revenue"])
    @debit_lists = Plutus::Account.where(:type => ["Plutus::Asset", "Plutus::Expense"])
    @vendors = Vendor.all
  end

  # GET /invoices/1/edit
  def edit
    @invoice.invoice_items.build
    @invoice.debit_invoices.build
    @entries = Plutus::Entry.limit(100).by_month.order('created_at DESC').limit(10)
    @credit_lists = Plutus::Account.where(:type => ["Plutus::Liability", "Plutus::Equity", "Plutus::Revenue"])
    @debit_lists = Plutus::Account.where(:type => ["Plutus::Asset", "Plutus::Expense"])
    @vendors = Vendor.all
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.vendor_id = params[:invoice][:vendor_id]

    respond_to do |format|
         @entry = Plutus::Entry.new(
            :description => @invoice.particulars,
            :commercial_document => @invoice,
            :debits =>  debit_invoice_params,
            :credits => invoice_items_params )
        if @invoice.save!
          @entry.save!
          format.html
          format.json { render :show, status: :created, location: @invoice }
          format.js
        else
          format.html { render :new }
          format.js
        end
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to @invoice, notice: 'Invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy

    if @entry.destroy
      @invoice.destroy
      respond_to do |format|
        format.html { redirect_to new_invoice_path }
        format.js
      end
     
    end

    # if @invoice.destroy!
    #   format.html { redirect_to invoices_url, notice: 'Invoice was successfully destroyed.' }
    #   format.json { head :no_content }
    # else

    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end

    def set_entry
      @entry = Plutus::Entry.where(commercial_document: params[:id]).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_params
      params.require(:invoice).permit(:vendor_id, :particulars, :created_at,  :invoice_code, :date, invoice_items_attributes: [:amount, :account_name, :_destroy], debit_invoices_attributes:  [:amount, :account_name, :_destroy])
    end

    def debit_invoice_params
      params[:invoice][:debit_invoices_attributes].except(:amount, :account_name).permit!
    end

    def invoice_items_params
      params[:invoice][:invoice_items_attributes].except(:amount, :account_name).permit!
    end

end
