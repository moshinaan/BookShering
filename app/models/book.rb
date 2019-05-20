class Book < ApplicationRecord
	has_many :bookcases

	before_save { name.downcase! }
	validates :name,  presence: true, uniqueness: { case_sensitive: false }

	validates :author_id,  presence: true
	validates :year_publishing,  presence: true,  length: { maximum: 4 }
	validates :age_restrictions,  presence: true,  length: { maximum: 2 }
	validates :publishing,  presence: true

end
