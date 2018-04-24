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

get '/albums/stock' do
  @no_stock = Album.get_stock_group("Out of Stock")
  @low_stock = Album.get_stock_group("Low Stock Level")
  @medium_stock = Album.get_stock_group("Medium Stock Level")
  @high_stock = Album.get_stock_group("High Stock Level")
  erb(:"albums/stock")
end

post "/album/delete" do
  album = Album.find_by_id(params[:album_id])
  album.destroy()
  redirect to "/albums/new"
end
