# literoflight.rb
require 'sinatra'
require 'haml'

# Install this gem first!
configure(:development) do |c|
  require "sinatra/reloader"
  c.also_reload "*.rb"
end

# configure
set :haml, :format => :html5

get '/' do
  "Hello, world"
end


# get '/s3/*' do
#   redirect 'https://(target server)/s3/' + params[:splat][0]
# end

# Redirect shared images to S3. Voila! Better clientside caching. Otherwise would choke on domain change.
# get '/images/:image' do |image|
#   redirect '/s3/images/' + image
# end