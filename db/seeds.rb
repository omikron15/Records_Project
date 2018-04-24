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
  "artist_picture" => "./images/abstract-art-blur-417458.jpg"
})

artist3 = Artist.new({
  "name" => "Artist 3",
  "artist_picture" => "./images/acoustic-antique-art-290660.jpg"
})

artist4 = Artist.new({
  "name" => "Artist 4",
  "artist_picture" => "./images/adult-beautiful-blur-374703.jpg"
})

artist5 = Artist.new({
  "name" => "Artist 5",
  "artist_picture" => "./images/audience-backlit-band-154147.jpg"
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
  "stock_leve" => 11,
  "album_picture" => "./images/album-black-classic-167092.jpg"
})

album2 = Album.new({
  "name" => "Album 2",
  "artist_id" => artist2.id,
  "genre" => "Pop",
  "stock_leve" => 9,
  "album_picture" => "./images/audience-band-concert-167491.jpg"
})

album3 = Album.new({
  "name" => "Album 3",
  "artist_id" => artist3.id,
  "genre" => "Indy",
  "stock_leve" => 3,
  "album_picture" => "./images/audience-band-concert-167636.jpg"
})

album4 = Album.new({
  "name" => "Album 4",
  "artist_id" => artist4.id,
  "genre" => "Pop",
  "stock_leve" => 30,
  "album_picture" => "./images/bass-guitar-chord-close-up-96380.jpg"
})

album5 = Album.new({
  "name" => "Album 5",
  "artist_id" => artist5.id,
  "genre" => "Metal",
  "stock_leve" => 1,
  "album_picture" => "./images/close-up-fashion-female-373945.jpg"
})

album6 = Album.new({
  "name" => "Album 6",
  "artist_id" => artist1.id,
  "genre" => "Country",
  "stock_leve" => 5,
  "album_picture" => "./images/concert-music-musical-instrument-111287.jpg"
})

album7 = Album.new({
  "name" => "Album 7",
  "artist_id" => artist5.id,
  "genre" => "Indy",
  "stock_leve" => 20,
  "album_picture" => "./images/earphones-earpods-justifyyourlove-802958.jpg"
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
