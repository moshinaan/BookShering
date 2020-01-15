class AddStateToResults < ActiveRecord::Migration[5.1]
  def change
    add_column :results, :state, :string
    add_column :results, :text, :string
  end
end
