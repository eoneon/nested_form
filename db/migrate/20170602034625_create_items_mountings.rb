class CreateItemsMountings < ActiveRecord::Migration
  def change
    create_table :items_mountings, id: false do |t|
      t.references :item, index: true, foreign_key: true
      t.references :mounting, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
