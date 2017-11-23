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
  end
end
