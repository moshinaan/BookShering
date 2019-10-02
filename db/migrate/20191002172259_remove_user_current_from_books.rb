class RemoveUserCurrentFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :user_current, :integer
  end
end
