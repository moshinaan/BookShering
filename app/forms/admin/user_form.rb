class Admin::UserForm < Tramway::Core::ApplicationForm
	properties :email, :name, :city, :date_birth

	def initialize(object)
		super(object).tap do
			form_properties email: :string,
							name: :string,
							city: :default,
							date_birth: :date_picker
		end
	end
end