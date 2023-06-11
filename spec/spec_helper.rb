# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'test'

require File.expand_path('../config/environment', __dir__)
require 'rspec'
require 'capybara/dsl'
require 'database_cleaner'

Capybara.app = Player
DatabaseCleaner.strategy = :truncation

RSpec.configure do |config|
  config.before(:all) do
    DatabaseCleaner.clean
  end
  config.after do
    DatabaseCleaner.clean
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
