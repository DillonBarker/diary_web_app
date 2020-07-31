require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'

ENV['ENV'] = 'test'
require_relative './setup_test_database'
require_relative '../app'



RSpec.configure do |config|
  config.before(:each) do
  end
end

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,])
SimpleCov.start
Capybara.app = DiaryApp
