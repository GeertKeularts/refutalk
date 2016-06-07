class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :message
      t.string :status
      t.integer :refugee_id
      t.integer :dutchie_id

      t.timestamps null: false
    end
  end
end
