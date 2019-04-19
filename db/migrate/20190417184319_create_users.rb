class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :date_birth
      t.string :city
      t.string :email

      t.timestamps
    end
  end
end
