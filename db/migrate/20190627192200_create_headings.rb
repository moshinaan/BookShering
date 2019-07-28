class CreateHeadings < ActiveRecord::Migration[5.1]
  def change
    create_table :headings do |t|
      t.text :name
      t.text :state
      t.timestamps
    end
  end
end
