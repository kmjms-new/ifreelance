class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.float :amount
      t.string :clasification
      t.string :info
      t.string :name_client
      t.string :name_project
      t.string :developer

      t.timestamps
    end
  end
end
