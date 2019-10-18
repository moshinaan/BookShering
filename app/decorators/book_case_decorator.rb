class BookCaseDecorator < Tramway::Core::ApplicationDecorator
  class << self
	def collections
          [ :all ]
    end
  end

  def book_id
    object.book&.id
  end

  def book_name
	object.book&.name
  end

  def author
  	object.book.author&.name
  end


end