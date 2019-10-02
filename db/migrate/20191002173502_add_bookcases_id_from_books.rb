class AddBookcasesIdFromBooks < ActiveRecord::Migration[5.1]
  def change
  	add_column :books, :bookcases_id, :integer	
  end
end
