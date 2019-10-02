class Bookcase < ApplicationRecord
	has_many :books, class_name: 'Book'
	belongs_to :books
	belongs_to :user
end
