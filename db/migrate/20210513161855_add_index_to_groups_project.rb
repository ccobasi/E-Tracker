class AddIndexToGroupsProject < ActiveRecord::Migration[6.1]
  def change
    
    add_index :groups_projects, :project_id
  end
end
