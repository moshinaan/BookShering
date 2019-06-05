class BookForm < Tramway::Core::ApplicationForm
	properties :name, :status, :author_id, :publisher_id, :age_restrictions, :year_publishing

    def initialize(object)
    	super(object).tap do
    		form_properties name: :text,
    		                status: :text,
    		                author: :string,
    		                publisher: :string,
    		                age_restrictions: :date_picker,
    						year_publishing: :date_picker
    	end
    end
end