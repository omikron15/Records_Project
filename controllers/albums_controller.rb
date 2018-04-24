require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )
require_relative( '../models/album.rb' )

get '/albums/new' do
  @artists = Artist.all
  @albums = Album.all
  erb(:"albums/new")
end

post '/album' do
  album = Album.new(params)
  album.save
  redirect to("/")
end
