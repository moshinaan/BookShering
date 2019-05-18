class AddCiyuToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :city, :text
  end
end
