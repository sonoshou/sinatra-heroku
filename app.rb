require 'bundler'
require 'sinatra'
require 'sinatra/reloader' if development?

require 'haml'
# require 'sass'
# require 'coffee-script'

get '/' do
   @title = "Sinatra Heroku Test"
   haml :index
end
