class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :status
      t.string :name
      t.string :author
      t.string :publishing
      t.integer :year_publishing
      t.integer :age_restrictions
      t.integer :user_id, index: true
      t.integer :user_current

      t.timestamps
    end
  end
end
