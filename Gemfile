# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"
gem "rails", "~> 7.0.2", ">= 7.0.2.4"

gem "cssbundling-rails"
gem "jbuilder"
gem "jsbundling-rails"

gem "bootsnap", require: false
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "redis", "~> 4.0"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem "awesome_print"
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"
  gem "table_print"
end

group :development do
  gem "brakeman"
  gem "bullet"
  gem "rubocop", require: false
  gem "spring-commands-rspec"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "simplecov", require: false
  gem "webdrivers"
end

# Custom
gem "devise"
gem "httparty"
gem "pagy"
gem "rails-i18n"
gem "show_for"
gem "simple_form"
