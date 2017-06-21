class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :type
      t.string :element

      t.timestamps null: false
    end
  end
end
