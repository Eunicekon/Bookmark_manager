
RSpec.configure do |config|
  config.before(:each) do
    set_up_data
  end
end
  

# add this to spec/spec_helper.rb

ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'


# require our Sinatra app file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require_relative './setup_test_database'


# tell Capybara about our app class
Capybara.app = BookmarkManager

