::Tramway::Core.initialize_application name: :bookshering, title: 'BookShering'
::Tramway::Admin.set_available_models User,
  Tramway::User::User,
  Tramway::Landing::Block,
  Book,
  Author,
  Publisher,
  project: :bookshering
