class Admin::BookForm < Tramway::Core::ApplicationForm
	properties :name, :author_id, :heading_id, :publisher_id, :age_restrictions, :user_id, :year_publishing

    def initialize(object)
    	super(object).tap do
    		form_properties name: :text,
    		                author_id: :string,
                            heading_id: :string,
    		                publisher_id: :string,
                            age_restrictions: :date_picker,
                            user_id: :string,       
    						year_publishing: :date_picker
    	end
    end
end