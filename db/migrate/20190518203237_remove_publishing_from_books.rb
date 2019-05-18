class RemovePublishingFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :publishing, :string
  end
end
