# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'

gem 'rails', '~> 7.0.4', '>= 7.0.4.2'
gem 'sprockets-rails'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'redis', '~> 4.0'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'bootsnap', require: false
gem 'rubocop', require: false
gem 'devise'
gem 'bundler-audit', '~> 0.9.1'

group :development, :test do
  gem 'pry'
  gem 'rspec-rails', '~> 6.0.0'
end

group :development do
  gem 'web-console'
  gem 'pry'
  gem 'brakeman', '~> 5.4', '>= 5.4.1'
end

group :test do
  gem 'pg'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem "rspec_junit_formatter", require: false
end
