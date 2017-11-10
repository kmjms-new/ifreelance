class CreateStateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :state_projects do |t|
      t.string :name_state
      t.text :description

      t.timestamps
    end
  end
end
