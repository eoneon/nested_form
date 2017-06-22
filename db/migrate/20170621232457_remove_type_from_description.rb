class RemoveTypeFromDescription < ActiveRecord::Migration
  def change
    remove_column :descriptions, :type, :string
  end
end
