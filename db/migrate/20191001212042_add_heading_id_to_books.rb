class AddHeadingIdToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :heading_id, :integer
  end
end
