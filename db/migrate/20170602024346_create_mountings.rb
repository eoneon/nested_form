class CreateMountings < ActiveRecord::Migration
  def change
    create_table :mountings do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
