class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.integer :author_id
      t.string :name
      t.integer :duration

      t.timestamps
    end
  end
end
