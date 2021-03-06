class Book < ApplicationRecord
  include PgSearch
  multisearchable against: [:name, :year_publishing]

  belongs_to :author
  belongs_to :publisher
  belongs_to :heading
  belongs_to :user
  has_one :bookcases, class_name: 'Bookcase'
  
  validates :name, presence: true
  validates :year_publishing,  presence: true
  year_publishing = 0000..9999
end
