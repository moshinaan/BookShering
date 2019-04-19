class CreateBookcases < ActiveRecord::Migration[5.1]
  def change
    create_table :bookcases do |t|
      t.integer :book_id, index: true
      t.integer :user_id, index: true
      t.datetime :taken_at
      t.datetime :returned_at

      t.timestamps
    end
  end
end
