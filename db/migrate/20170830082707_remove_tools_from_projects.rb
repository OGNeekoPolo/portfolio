class RemoveToolsFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :tools, :text
  end
end
