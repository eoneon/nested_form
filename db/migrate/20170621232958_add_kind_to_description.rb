class AddKindToDescription < ActiveRecord::Migration
  def change
    add_column :descriptions, :kind, :string
  end
end
