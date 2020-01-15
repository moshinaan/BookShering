class ResultPgSearch < ActiveRecord::Migration[5.1]
  def change
  	create_table :results do |t|
  	  t.integer :user_id, index: true
  	end
  end
end
