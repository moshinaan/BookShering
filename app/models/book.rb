class Book < ApplicationRecord
  belongs_to :author
  has_many :bookcases

  validates :name, presence: true#, uniqueness: { case_sensitive: false }

  #validates :author_id,  presence: true
  #validates :year_publishing,  presence: true,  length: { maximum: 4 }
  #validates :age_restrictions,  presence: true,  length: { maximum: 2 }
end
