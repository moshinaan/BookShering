class AddStateToBookcases < ActiveRecord::Migration[5.1]
  def change
    add_column :bookcases, :state, :text
  end
end
