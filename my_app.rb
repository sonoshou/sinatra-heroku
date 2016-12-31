require 'bundler'
require 'sinatra'
require 'sinatra/reloader' if development?

require 'haml'
# require 'sass'
# require 'coffee-script'

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @title = "Sinatra Heroku Test"
    haml :index
  end
end
