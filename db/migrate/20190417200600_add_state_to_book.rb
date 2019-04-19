class AddStateToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :state, :text
  end
end
