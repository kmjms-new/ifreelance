class CreateHubFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :hub_files do |t|
      t.string :name
      t.string :description
      t.string :myfile

      t.timestamps
    end
  end
end
