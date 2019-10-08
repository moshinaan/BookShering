class DeleteHeadingFromBook < ActiveRecord::Migration[5.1]
  def change
  	remove_column :books, :heading
  end
end
