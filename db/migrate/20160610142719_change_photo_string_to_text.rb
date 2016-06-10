class ChangePhotoStringToText < ActiveRecord::Migration
  def change
    change_column :users, :photo, :text
  end
end
