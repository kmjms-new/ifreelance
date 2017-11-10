class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name_project
      t.text :description
      t.date :star_date
      t.date :end_date
      t.string :name_client
      t.string :state_project
      t.float :price
      t.float :progress

      t.timestamps
    end
  end
end
