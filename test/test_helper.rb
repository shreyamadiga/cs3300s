require 'simplecov'
SimpleCov.start 'rails'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
# test/test_helper.rb
require 'simplecov'

# features/support/env.rb
require 'simplecov'

# .simplecov
SimpleCov.start 'rails' do
  # any custom configs like groups and filters can be here at a central place
end