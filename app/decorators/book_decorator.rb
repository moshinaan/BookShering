class BookDecorator < Tramway::Core::ApplicationDecorator
  class << self
    def collections
      [ :all ]
    end

    def list_attributes
      [:author, :status, :publisher, :year_publishing, :age_restrictions]
    end

    def show_attributes
      [:name, :author, :publisher, :year_publishing, :age_restrictions]
    end
  end

  delegate :bookcases, to: :object

  def author
    object.author&.name
  end

  def status
    object.status
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
