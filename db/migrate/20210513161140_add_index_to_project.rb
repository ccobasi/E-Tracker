class AddIndexToProject < ActiveRecord::Migration[6.1]
  def change
    
    add_index :projects, :author_id
  end
end
