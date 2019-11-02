class User < ApplicationRecord

  attr_accessor :remember_token

  has_many :books, class_name: 'Book'
  has_many :bookcases, class_name: 'Bookcase'

  validates :name,  presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates(:email, presence: true, length: { maximum: 255},
						format: { with: VALID_EMAIL_REGEX })

  enumerize :city, in: ['Ульяновск', 'Самара', 'Казань', 'Томск']

  has_secure_password
  validates(:password, presence: true, length: { minimum: 6 }, on: :create)
end

