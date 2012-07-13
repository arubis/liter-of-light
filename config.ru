require 'rubygems'
require 'bundler'
Bundler.setup
require 'rack'
require 'thin'

$: << File.dirname(__FILE__)
require 'literoflight'

#use Rack::Static, :urls => ["/stylesheets", "/index.html", "/javascript"], :root => "public" # used to include /images too...

#use Rack::Rewrite do
#   rewrite '/', '/index.html'
#end

run Sinatra::Application

