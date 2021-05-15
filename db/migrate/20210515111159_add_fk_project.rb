class AddFkProject < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :projects, :users, column: "author_id"
  end
end
