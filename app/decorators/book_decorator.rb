class BookDecorator < Tramway::Core::ApplicationDecorator
  class << self
    def collections
      [ :all ]
    end

    def list_attributes
      [:author, :heading, :publisher, :year_publishing, :age_restrictions, :user]
    end

    def show_attributes
      [:name, :author,:heading, :publisher, :year_publishing, :age_restrictions, :user]
    end
  end

  def author
    object.author&.name
  end

  def user
    object.user&.name
  end

  def heading
    object.heading&.name
  end

  def publisher
    object.publisher&.name
  end

  def year_publishing
    object.year_publishing
  end

  def age_restrictions 
    object.age_restrictions 
  end
end
