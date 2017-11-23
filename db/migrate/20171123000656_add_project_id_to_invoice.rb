class AddProjectIdToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_reference :invoices, :project, foreign_key: true
  end
end
