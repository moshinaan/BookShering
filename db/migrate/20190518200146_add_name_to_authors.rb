class AddNameToAuthors < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :name, :text
  end
end
