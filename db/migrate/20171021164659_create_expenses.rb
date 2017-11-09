class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.float :quantity
      t.string :process
      t.date :date_expenses
      t.string :category
      t.string :state
      t.boolean :vinculation

      t.timestamps
    end
  end
end
