class Web::BookDecorator < Tramway::Core::ApplicationDecorator
  delegate :status, to: :object
  delegate :age_restrictions, to: :object
  delegate :year_publishing, to: :object

  def author
    object.author&.name
  end

  def publisher
    object.publisher&.name
  end

  def user
    object.user&.name
  end

  def current_user
    object.user&.name
  end

  def created_at
  	object.created_at.strftime("%m/%d/%Y")
  end
end
