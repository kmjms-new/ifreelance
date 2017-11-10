class AddCreateInvoiceToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :currency, :string
  end
end
