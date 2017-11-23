class InvoicesController < ApplicationController
  before_action :authenticate_user!

  def edit
  	@invoice = Invoice.find_by_order_id(params[:id])
  end

  def update
  	@invoice = Invoice.find(params[:id])

  	if @invoice.update(params.require(:invoice).permit( :design_view, :programming_front, :design_date_base, :programming_back, :banner, :advertising, :other))
      redirect_to projects_path , :notice=> 'Invoice was successfully updated.'
    else
      redirect_to edit_project_path, :alert=> 'Invoice was not updated.'
    end

    def pay_with_credit_card
    paypal = PaypalService.new(params)
    @result = paypal.process_payment

    respond_to { |format| format.js }
  end
  def paypal_payments
    # send a post request to paypal to verify payment data

    invoice = Invoice.find(params["invoice"])
    # if status is verified make an entry in payments and update the status on invoice
    if response == "VERIFIED"
      invoice.payments.create({
                                  :payment_method => "paypal",
                                  :payment_amount => params[:payment_gross],
                                  :payment_date => Date.today,
                                  :notes => params[:txn_id],
                                  :paid_full => 1
                              })
      invoice.update_attribute('status', 'paid')
    end
    render :nothing => true
  end

  def send_invoice
    invoice = Invoice.find(params[:id])
    invoice.send_invoice(current_user, params[:id])
    redirect_to(invoice_path(invoice), notice: 'Invoice sent successfully.')
  end


  private

  def invoice_has_deleted_clients?(invoices)
    invoice_with_deleted_clients = []
    invoices.each do |invoice|
      if invoice.unscoped_client.deleted_at.present?
        invoice_with_deleted_clients << invoice.invoice_number
      end
    end
    invoice_with_deleted_clients
  end
  end
end
