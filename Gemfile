source 'https://rubygems.org'

ruby '2.6.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.7'
gem 'bcrypt','3.1.12'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'sassc-rails', '>= 2.1.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'kaminari'
gem 'ruby-graphviz'
gem 'bootstrap-sass'

gem 'tramway-admin', '1.12.2'
gem 'tramway-auth', '1.0.2'
gem 'tramway-core', '1.10.3'
gem 'tramway-landing', '1.7.1.1'
gem 'tramway-profiles', '1.3.1'
gem 'tramway-user', '2.0'

gem 'state_machine', github: 'seuros/state_machine'
gem 'pg_search'
gem 'haml-rails'
gem 'bootstrap', git: 'https://github.com/twbs/bootstrap-rubygem'
gem 'jquery-rails'
gem 'copyright_mafa'
gem 'trap'
gem 'kaminari'
gem 'bootstrap-kaminari-views', github: 'kalashnikovisme/bootstrap-kaminari-views', branch: :master
gem 'carrierwave'
gem 'mini_magick'
gem 'rmagick'
gem 'state_machine_buttons'
gem 'more_html_tags', '>= 0.2.0'
gem 'ckeditor', '4.2.4'
gem 'config'
gem 'colorize'
gem 'bootstrap-datepicker-rails', github: 'kostia/bootstrap-datepicker-rails'
gem 'russia_regions', '0.0.6'
gem 'russian'
gem 'time_difference'
gem 'font_awesome5_rails'
gem 'roo'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'pry'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rails-erd'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
