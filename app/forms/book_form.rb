class BookForm < Tramway::Core::ApplicationForm
	properties :name, :status, :author_id,
			   :age_restrictions, :publishing, :year_publishing

    def initialize(object)
    	super(object).tap do
    		form_properties name: :string,
    						publishing: :string,
    						year_publishing: :date_picker
    	end
    end
end