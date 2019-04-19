::Tramway::Core.initialize_application name: :bookshering
::Tramway::Admin.set_available_models User,
									  Tramway::User::User,
									  Tramway::Landing::Block,
									  project: :bookshering