# literoflight.rb
require 'sinatra'
require 'haml'
require 'kramdown'

# configure
set :haml, :format => :html5, :layout => true
   # n.b. :layout => true renders haml docs through layout.haml if it exists
   # and can be redirected to another symbol for a different layout
   # or "false" for none
before do
  cache_control :public, :must_revalidate, :max_age => 300
end
set :static_cache_control, [:public, :max_age => 300]

get '/' do
  haml :main, :locals => { :text => markdown(:main), :title => "" }
end

get '/why' do
  haml :why, :locals => { :text => markdown(:why), :title => "why | " }
end

get '/bootstrap' do
  haml :bootstrap, :layout => :layout_bootstrap
end

# get '/s3/*' do
#   redirect 'https://(target server)/s3/' + params[:splat][0]
# end

# Redirect shared images to S3. Voila! Better clientside caching. Otherwise would choke on domain change.
# get '/images/:image' do |image|
#   redirect '/s3/images/' + image
# end