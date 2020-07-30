require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'

require_relative '../app'

ENV['TEST'] = 'test'

RSpec.configure do |config|
  config.before(:each) do
  end
end

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,])
SimpleCov.start
Capybara.app = DiaryApp
