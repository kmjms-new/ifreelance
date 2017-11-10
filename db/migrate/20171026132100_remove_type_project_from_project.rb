class RemoveTypeProjectFromProject < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :type_project, :string
  end
end
