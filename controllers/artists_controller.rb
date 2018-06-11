require( 'sinatra' )
# require( 'sinatra/contrib/all' ) if development? //Removed for heroku
require_relative( '../models/artist.rb' )
require_relative( '../models/album.rb' )

get '/artists/new' do
  @artists = Artist.all
  @albums = Album.all
  erb(:"artists/new")
end

post '/artist' do
  artist = Artist.new(params)
  artist.save
  redirect to("/")
end

post "/artist/delete" do
  artist = Artist.find_by_id(params[:artist_id])
  artist.destroy()
  redirect to "/artists/new"
end
