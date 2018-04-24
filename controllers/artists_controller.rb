require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )
require_relative( '../models/album.rb' )

get '/artists/new' do
  #@artists = Artist.all
  #@albums = Album.all
  erb(:"artists/new")
end

post '/artist' do
  artist = Artist.new(params)
  artist.save
  redirect to("/")
end

# maybe do delete if you have time

# post '/bitings/:id/delete' do
#   Biting.destroy(params[:id])
#   redirect to("/bitings")
# end
