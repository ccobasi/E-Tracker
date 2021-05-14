class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :duration
      t.integer :author_id
      t.integer :group_id

      t.timestamps
    end
  end
end
