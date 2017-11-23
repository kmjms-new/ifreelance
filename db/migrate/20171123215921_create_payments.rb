class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.references :invoice, foreign_key: true
      t.decimal :payment_amount
      t.string :payment_type
      t.string :payment_method
      t.date :payment_date
      t.text :notes
      t.boolean :send_payment_notification
      t.boolean :paid_full
      t.string :archive_number
      t.decimal :credit_applied
      t.string :status
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
