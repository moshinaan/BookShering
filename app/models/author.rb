class Author < ApplicationRecord
	has_many :books, class_name: 'Book'

	validates :name,  presence: true
end
