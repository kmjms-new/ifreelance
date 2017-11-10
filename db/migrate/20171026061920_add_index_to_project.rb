class AddIndexToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :type_project_id, :integer
    add_index :projects, :type_project_id
  end
end
