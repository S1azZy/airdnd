source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.1'

gem 'pg', '>= 0.18', '< 2.0'

gem 'puma', '~> 4.3'

gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5.2.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

gem 'bootsnap', '>= 1.1.0', require: false

gem 'slim-rails'

gem 'sprockets-rails'
gem 'bootstrap', '~> 4.1.3'
gem 'jquery-rails'

gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

# Errors handling
gem "sentry-raven"

group :development, :test do
  gem 'dotenv-rails'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  gem 'pry-rails'
  gem 'rspec-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'binding_of_caller'
  gem 'better_errors'

  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-performance', require: false
  gem 'pronto'
  gem 'pronto-rubocop', require: false

  gem 'bullet'
  gem 'simplecov'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'

  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'database_cleaner'
  gem 'timecop'
  gem 'shoulda-matchers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
