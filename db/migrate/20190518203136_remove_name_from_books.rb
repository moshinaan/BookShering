class RemoveNameFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :name, :string
  end
end
