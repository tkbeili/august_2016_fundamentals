gem "sinatra", "1.4.7"

require "sinatra"
require "sinatra/reloader"
require "data_mapper"

enable :sessions

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/app.db")

# class name must be singular. DataMapper will user a pluralized name for the
# table. For instance, in this case it will be `contacts`
class Contact
  # this integrates our class with DataMapper so it will do things like creating
  # or updating the table and columns inside the table. It will also give us
  # extra methods to interact with table rows.
  include DataMapper::Resource

  property :id, Serial        # An auto-increment integer key (primary key)
  property :full_name, String # A varchar type string, for short strings
  property :email, String
  property :message, Text     # A text block, for longer string data.
end

class Blog
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :body, Text
end

# This tell DataMapper to create tables if they don't exit. If tables exist
# it will update them with new columns.
# you only need to call this once after you defined all of your classes.
DataMapper.auto_upgrade!

# default port for Sinatra application is 4567
# if you want to change, for instance to 4666 then you can do:
# set :port, 4666

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'secret']
  end
end


get "/" do
  # {:layout => :default_layout}
  # erb :index, layout: :default_layout
  erb(:index, {layout: :default_layout})
end

get "/contact" do
  erb(:contact, {layout: :default_layout})
end

post "/contact" do
  # Contact.create({full_name: "Tam Kbeili", email: "tam@codecore.ca", message: "Hello world!"})

  # Long way:
  # c = Contact.new
  # c.full_name = params[:full_name]
  # c.email     = params[:email]
  # c.message   = params[:message]
  # c.save

  # Shorter way:
  Contact.create params

  @name = params[:full_name]
  erb(:thank_you, {layout: :default_layout})
end

get "/contacts" do
  protected!
  @contacts = Contact.all
  erb(:contacts, {layout: :default_layout})
end

# this will match a url that's like: /contacts/ANYTHING
# such as:
# /contacts/3
# /contacts/hello
get "/contacts/:id" do |id|
  protected!
  @contact = Contact.get id
  erb(:contact_details, {layout: :default_layout})
end

get "/posts/new" do
  protected!
  erb(:new, {layout: :default_layout})
end

post "/new" do
  protected!
  Blog.create params
  redirect to("/blog")
end

get "/blog" do
  @blogs = Blog.all
  erb(:blogs, {layout: :default_layout})
end

get "/posts/:id" do |id|
  @blog = Blog.get id
  erb(:post_archive, {layout: :default_layout})
end

get "/lang/:language" do |language|
  session[:language] = language
  redirect to("/")
end
