class AddStateToAuthors < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :state, :text
  end
end
