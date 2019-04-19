class User < ApplicationRecord
	has_many :books, class_name: 'Book'
	has_many :bookcases, class_name: 'Bookcase'

	enumerize :city, in: ['Ульяновск', 'Говно']
end
