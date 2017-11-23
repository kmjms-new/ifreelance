class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :client, foreign_key: true
      t.references :freelance, foreign_key: true
      t.date :delivery_date
      t.integer :project_amount
      t.integer :project_paid
      t.string :project_status
      t.text :project_details
      t.integer :project_delete

      t.timestamps
    end
  end
end
