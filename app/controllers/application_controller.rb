class ApplicationController < ::Tramway::Core::ApplicationController
  protect_from_forgery with: :exception
  include Concerns::SessionsManagment # код в папке helpers только для вьюх. Хочешь сделать дополнения для контроллеров, есть папка app/controllers/concerns, а ещё называть файлы в этой папке принято (но не обязательно) bla_bla_managment, потому что рельсы ожидают видеть файлы bla_bla_helpers в папке helpers. Сам этого не знал, кстати, вот только сейчас выяснил :) учусь с тобой :)
  include Concerns::LocalAuthManagement 
end
