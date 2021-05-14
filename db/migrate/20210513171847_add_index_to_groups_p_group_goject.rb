class AddIndexToGroupsPGroupGoject < ActiveRecord::Migration[6.1]
  def change
    
    add_index :groups_projects, :group_id
    
  end
end
