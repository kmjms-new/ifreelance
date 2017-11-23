class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :design_view
      t.string :programming_front
      t.string :design_date_base
      t.string :programming_back
      t.string :banner
      t.string :advertising

      t.timestamps
    end
  end
end
