require 'sinatra/base'
require './lib/bookmarkManager' #this is the same as requiring in the terminal when we do feature tests

class BookmarkManager < Sinatra::Base

  get '/' do
    'Welcome to Bookmark Manager'
  end 

  get '/bookmarks' do
    # p ENV
    @bookmarks = Bookmark.all 

    erb :'index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end