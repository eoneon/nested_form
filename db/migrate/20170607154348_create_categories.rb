class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :item, index: true, foreign_key: true
      t.references :mounting, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
