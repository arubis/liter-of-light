require 'rubygems'
require 'sinatra'
require 'rack/test'
require 'rspec'
require 'rspec/autorun'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

# set test environment
Sinatra::Base.set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

require File.join(File.dirname(__FILE__), '..', 'literoflight.rb')

