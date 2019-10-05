class Book < ApplicationRecord
  belongs_to :author # вот эта связь говорит о том, что ты можешь вызывать у объекта Book метод author и получать объект автора. Типа так @book.author. а теперь в book_decorator
  belongs_to :publisher
  belongs_to :heading
  belongs_to :user
  belongs_to :bookcases
  
  validates :name, presence: true#, uniqueness: { case_sensitive: false }
  #validates :author_id,  presence: true
  validates :year_publishing,  presence: true
  year_publishing = 0000..9999
  #validates :age_restrictions,  presence: true,  length: { maximum: 2 }
end
