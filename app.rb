require( 'sinatra' )
# require( 'sinatra/contrib/all' ) if development? //Removed for heroku
require_relative( './controllers/artists_controller.rb')
require_relative( './controllers/albums_controller.rb')
require_relative( './models/album.rb' )
require_relative( './models/artist.rb' )

get '/' do
  @albums = Album.all()
  @artists = Artist.all()
  erb( :index )
end
