class ChangeBackToString < ActiveRecord::Migration
  def change
    change_column :users, :photo, :string
  end
end
