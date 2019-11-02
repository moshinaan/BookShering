class Admin::PublisherForm < Tramway::Core::ApplicationForm
	properties :name

    def initialize(object)
    	super(object).tap do
    		form_properties name: :text
    	end
    end
end