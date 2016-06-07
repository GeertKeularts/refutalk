class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :kind, :string
    add_column :users, :username, :string
    add_column :users, :photo, :string
    add_column :users, :description, :text
  end
end
