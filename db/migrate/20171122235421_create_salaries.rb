class CreateSalaries < ActiveRecord::Migration[5.1]
  def change
    create_table :salaries do |t|
      t.references :freelance, foreign_key: true
      t.date :salary_date
      t.string :salary_month
      t.integer :salary_paid

      t.timestamps
    end
  end
end
