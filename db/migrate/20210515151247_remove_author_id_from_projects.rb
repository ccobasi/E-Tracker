class RemoveAuthorIdFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :author_id, :integer
  end
end
