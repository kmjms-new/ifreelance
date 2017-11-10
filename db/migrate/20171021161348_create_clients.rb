class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.float :total_payment

      t.timestamps
    end
  end
end
