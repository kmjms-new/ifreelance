class CreditPaymentsController < ApplicationController
  before_action :set_credit_payment, only: [:show, :edit, :update, :destroy]

  # GET /credit_payments
  # GET /credit_payments.json
  def index
    @credit_payments = CreditPayment.all
  end

  # GET /credit_payments/1
  # GET /credit_payments/1.json
  def show
  end

  # GET /credit_payments/new
  def new
    @credit_payment = CreditPayment.new
  end

  # GET /credit_payments/1/edit
  def edit
  end

  # POST /credit_payments
  # POST /credit_payments.json
  def create
    @credit_payment = CreditPayment.new(credit_payment_params)

    respond_to do |format|
      if @credit_payment.save
        format.html { redirect_to @credit_payment, notice: 'Credit payment was successfully created.' }
        format.json { render :show, status: :created, location: @credit_payment }
      else
        format.html { render :new }
        format.json { render json: @credit_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credit_payments/1
  # PATCH/PUT /credit_payments/1.json
  def update
    respond_to do |format|
      if @credit_payment.update(credit_payment_params)
        format.html { redirect_to @credit_payment, notice: 'Credit payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @credit_payment }
      else
        format.html { render :edit }
        format.json { render json: @credit_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_payments/1
  # DELETE /credit_payments/1.json
  def destroy
    @credit_payment.destroy
    respond_to do |format|
      format.html { redirect_to credit_payments_url, notice: 'Credit payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_payment
      @credit_payment = CreditPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credit_payment_params
      params.require(:credit_payment).permit(:amount, :payment_id, :invoice_id)
    end
end
