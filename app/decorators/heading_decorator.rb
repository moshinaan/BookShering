class HeadingDecorator < Tramway::Core::ApplicationDecorator
  class << self

    def list_attributes
      [ :name ]
    end
  end
end
