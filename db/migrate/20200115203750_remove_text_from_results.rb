class RemoveTextFromResults < ActiveRecord::Migration[5.1]
  def change
    remove_column :results, :text, :string
  end
end
