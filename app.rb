require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative( './models/album.rb' )
require_relative( './models/artist.rb' )

get '/' do
  @albums = Album.all()
  @artists = Artist.all()
  erb( :index )
end
