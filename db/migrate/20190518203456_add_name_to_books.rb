class AddNameToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :name, :text
  end
end
