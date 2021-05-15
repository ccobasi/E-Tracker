class AddFkGroup < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :groups, :users
    add_foreign_key :groups_projects, :projects
    add_foreign_key :groups_projects, :groups
  end
end
