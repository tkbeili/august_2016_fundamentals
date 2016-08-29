
require 'sinatra'
require 'sinatra/reloader'
require "cowsay"

# When we receive a GET HTTP request with URL of "/" (home page)
# we send back a response to the user that say "Hello World!"
# get '/' do
#   '<h1>Hello World!</h1>'
# end

get '/' do
  @lucky_number = rand(100)
  # this will automatically look for a file names index.erb located
  # within a folder called `views` that should be located in the same
  # folder as this file: app.rb (this is called a convention)
  erb(:index, {layout: :default_layout})
end

get '/about' do
  erb(:about, {layout: :default_layout})
end

post "/greet" do
  @name = params[:user_name]
  erb(:index, {layout: :default_layout})
end
