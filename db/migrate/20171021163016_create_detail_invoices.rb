class CreateDetailInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :detail_invoices do |t|
      t.string :name_project
      t.integer :quantity
      t.string :description
      t.float :value

      t.timestamps
    end
  end
end
