class CreateCreditPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_payments do |t|
      t.decimal :amount
      t.references :payment, foreign_key: true
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
