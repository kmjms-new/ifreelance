class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :client_phone
      t.string :client_email
      t.string :client_sex
      t.text :client_address

      t.timestamps
    end
  end
end
