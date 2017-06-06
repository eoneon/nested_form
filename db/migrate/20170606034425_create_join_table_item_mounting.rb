class CreateJoinTableItemMounting < ActiveRecord::Migration
  def change
    create_join_table :items, :mountings do |t|
      t.index [:item_id, :mounting_id]
    end
  end
end
