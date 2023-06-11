# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '3.2.0'

gem 'activerecord'
gem 'activesupport'
gem 'dotenv'
gem 'pg'
gem 'puma'
gem 'rack'
gem 'shotgun'
gem 'sinatra'
gem 'sinatra-activerecord'
gem 'tux'

group :development, :test do
  gem 'pry'
  gem 'pry-byebug'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'rack-test'
  gem 'rspec'
end
