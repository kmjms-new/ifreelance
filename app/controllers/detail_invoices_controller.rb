class DetailInvoicesController < ApplicationController
  before_action :set_detail_invoice, only: [:show, :edit, :update, :destroy]

  # GET /detail_invoices
  # GET /detail_invoices.json
  def index
    @detail_invoices = DetailInvoice.all
  end

  # GET /detail_invoices/1
  # GET /detail_invoices/1.json
  def show
  end

  # GET /detail_invoices/new
  def new
    @detail_invoice = DetailInvoice.new
  end

  # GET /detail_invoices/1/edit
  def edit
  end

  # POST /detail_invoices
  # POST /detail_invoices.json
  def create
    @detail_invoice = DetailInvoice.new(detail_invoice_params)

    respond_to do |format|
      if @detail_invoice.save
        format.html { redirect_to @detail_invoice, notice: 'Detail invoice was successfully created.' }
        format.json { render :show, status: :created, location: @detail_invoice }
      else
        format.html { render :new }
        format.json { render json: @detail_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_invoices/1
  # PATCH/PUT /detail_invoices/1.json
  def update
    respond_to do |format|
      if @detail_invoice.update(detail_invoice_params)
        format.html { redirect_to @detail_invoice, notice: 'Detail invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_invoice }
      else
        format.html { render :edit }
        format.json { render json: @detail_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_invoices/1
  # DELETE /detail_invoices/1.json
  def destroy
    @detail_invoice.destroy
    respond_to do |format|
      format.html { redirect_to detail_invoices_url, notice: 'Detail invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_invoice
      @detail_invoice = DetailInvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_invoice_params
      params.require(:detail_invoice).permit(:name_project, :quantity, :description, :value)
    end
end
