class ChangeNameDutchieNameInRequestTable < ActiveRecord::Migration
  def change
    rename_column :requests, :dutchie_id, :dutchy_id
  end
end



