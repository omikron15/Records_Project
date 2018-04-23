require_relative( "../models/artist.rb" )
require_relative( "../models/album.rb" )

require("pry-byebug")

Album.delete_all
Artist.delete_all

artist1 = Artist.new({
  "name" => "Artist 1",
  "artist_picture" => "./images/bass-guitar-chord-close-up-96380.jpg"
})

artist2 = Artist.new({
  "name" => "Artist 2",
  "artist_picture" => "./images/bass-guitar-chord-close-up-96380.jpg"
})

artist3 = Artist.new({
  "name" => "Artist 3",
  "artist_picture" => "./images/bass-guitar-chord-close-up-96380.jpg"
})

artist4 = Artist.new({
  "name" => "Artist 4",
  "artist_picture" => "./images/bass-guitar-chord-close-up-96380.jpg"
})

artist5 = Artist.new({
  "name" => "Artist 5",
  "artist_picture" => "./images/bass-guitar-chord-close-up-96380.jpg"
})

artist1.save
artist2.save
artist3.save
artist4.save
artist5.save
#Start of Album creation

album1 = Album.new({
  "name" => "Album 1",
  "artist_id" => artist1.id,
  "genre" => "Rock",
  "stock_leve" => 0,
  "album_picture" => "./images/album-black-classic-167092.jpg"
})

album2 = Album.new({
  "name" => "Album 2",
  "artist_id" => artist2.id,
  "genre" => "Pop",
  "stock_leve" => 0,
  "album_picture" => "./images/album-black-classic-167092.jpg"
})

album3 = Album.new({
  "name" => "Album 3",
  "artist_id" => artist3.id,
  "genre" => "Indy",
  "stock_leve" => 0,
  "album_picture" => "./images/album-black-classic-167092.jpg"
})

album4 = Album.new({
  "name" => "Album 4",
  "artist_id" => artist4.id,
  "genre" => "Pop",
  "stock_leve" => 0,
  "album_picture" => "./images/album-black-classic-167092.jpg"
})

album5 = Album.new({
  "name" => "Album 5",
  "artist_id" => artist5.id,
  "genre" => "Metal",
  "stock_leve" => 0,
  "album_picture" => "./images/album-black-classic-167092.jpg"
})

album6 = Album.new({
  "name" => "Album 6",
  "artist_id" => artist1.id,
  "genre" => "Country",
  "stock_leve" => 0,
  "album_picture" => "./images/album-black-classic-167092.jpg"
})

album7 = Album.new({
  "name" => "Album 7",
  "artist_id" => artist5.id,
  "genre" => "Indy",
  "stock_leve" => 0,
  "album_picture" => "./images/album-black-classic-167092.jpg"
})

album1.save
album2.save
album3.save
album4.save
album5.save
album6.save
album7.save

binding.pry
nil
