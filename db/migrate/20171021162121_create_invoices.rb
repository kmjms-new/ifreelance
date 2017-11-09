class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.integer :number
      t.date :date_invoice
      t.date :end_date
      t.string :name_client
      t.float :total_value
      t.string :state

      t.timestamps
    end
  end
end
