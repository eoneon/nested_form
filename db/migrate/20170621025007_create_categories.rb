class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :item, index: true, foreign_key: true
      t.references :description, index: true, foreign_key: true
      t.string :type

      t.timestamps null: false
    end
  end
end
