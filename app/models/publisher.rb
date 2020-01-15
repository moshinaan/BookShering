class Publisher < ApplicationRecord
	include PgSearch
	multisearchable against: :name
	
	has_many :books, class_name: 'Book'
	validates :name,  presence: true
end
