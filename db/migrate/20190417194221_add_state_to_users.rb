class AddStateToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :state, :text
  end
end
