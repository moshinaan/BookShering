class AddStateToPublishers < ActiveRecord::Migration[5.1]
  def change
    add_column :publishers, :state, :text
  end
end
