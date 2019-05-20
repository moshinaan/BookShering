class BookDecorator < Tramway::Core::ApplicationDecorator
  class << self
    def collections
      [ :all ]
    end

    def list_attributes
      [:author]
    end

    def show_attributes
      [:name, :author]
    end
  end

  delegate :bookcases, to: :object

  def author
    object.author&.name
  end
end
