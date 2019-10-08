class RemoveStausFromBooks < ActiveRecord::Migration[5.1]
  def change
  	remove_column :books, :status
  end
end
