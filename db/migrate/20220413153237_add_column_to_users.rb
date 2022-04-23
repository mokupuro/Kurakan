class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, default: ""
    add_column :users, :twitter_id, :string, default: ""
    add_column :users, :instagram_id, :string, default: ""
  end
end
