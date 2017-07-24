require 'sinatra/base'
require './lib/link'

class Bookmark < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links'
  end

end
