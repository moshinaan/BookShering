class AddContentToResults < ActiveRecord::Migration[5.1]
  def change
    add_column :results, :content, :string
  end
end
