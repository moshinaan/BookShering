class User < ApplicationRecord

	attr_accessor :remember_token

	has_many :books, class_name: 'Book'
	has_many :bookcases, class_name: 'Bookcase'

	validates(:name, presence: true, length: { maximum: 50 })

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates(:email, presence: true, length: { maximum: 255},
						format: { with: VALID_EMAIL_REGEX })

	enumerize :city, in: ['Ульяновск', 'Говно']

	has_secure_password
	validates(:password, presence: true, length: { minimum: 6 })

  # Возвращает случайный токен
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  #связывает remember-токен 
  #с пользователем и сохраняет соответствующий remember-дайджест в базу данных


  # ВОТ ЗДЕСЬ БЫЛА ОПЕЧАТКА

  def remember
    #self.remember_token = ...
    #update_attribute(:remember_digest, ...)
  end

  # Возвращает true, если предоставленный токен совпадает с дайджестом.
  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
end

