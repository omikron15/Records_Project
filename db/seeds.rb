require_relative( "../models/artist.rb" )
require_relative( "../models/album.rb" )

require("pry-byebug")

Album.delete_all
Artist.delete_all

artist1 = Artist.new({
  "name" => "Artist 1",
  "artist_picture" => "https://www.pexels.com/photo/black-record-vinyl-167092/"
})

artist2 = Artist.new({
  "name" => "Artist 2",
  "artist_picture" => "https://www.pexels.com/photo/top-view-photography-of-vinyl-album-case-near-white-tealight-candle-placed-on-brown-table-706142/"
})

artist3 = Artist.new({
  "name" => "Artist 3",
  "artist_picture" => "https://www.pexels.com/photo/grayscale-photo-of-cutaway-acoustic-guitar-1010518/"
})

artist4 = Artist.new({
  "name" => "Artist 4",
  "artist_picture" => "https://www.pexels.com/photo/man-person-wall-music-387/"
})

artist5 = Artist.new({
  "name" => "Artist 5",
  "artist_picture" => "https://www.pexels.com/photo/woman-with-headphones-listening-music-6399/"
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
  "album_picture" => "https://www.pexels.com/photo/person-s-hand-holding-brown-violent-963113/"
})

album2 = Album.new({
  "name" => "Album 2",
  "artist_id" => artist2.id,
  "genre" => "Pop",
  "stock_leve" => 0,
  "album_picture" => "https://www.pexels.com/photo/acoustic-amplifier-artist-audio-114820/"
})

album3 = Album.new({
  "name" => "Album 3",
  "artist_id" => artist3.id,
  "genre" => "Indy",
  "stock_leve" => 0,
  "album_picture" => "https://www.pexels.com/photo/group-of-people-gathering-near-bonfire-954616/"
})

album4 = Album.new({
  "name" => "Album 4",
  "artist_id" => artist4.id,
  "genre" => "Pop",
  "stock_leve" => 0,
  "album_picture" => "https://www.pexels.com/photo/abstract-art-blur-bright-417458/"
})

album5 = Album.new({
  "name" => "Album 5",
  "artist_id" => artist5.id,
  "genre" => "Metal",
  "stock_leve" => 0,
  "album_picture" => "https://www.pexels.com/photo/audio-e-guitars-guitars-music-6966/"
})

album6 = Album.new({
  "name" => "Album 6",
  "artist_id" => artist1.id,
  "genre" => "Country",
  "stock_leve" => 0,
  "album_picture" => "https://www.pexels.com/photo/woman-in-white-cap-sleeved-shirt-blowing-dust-632722/"
})

album7 = Album.new({
  "name" => "Album 7",
  "artist_id" => artist5.id,
  "genre" => "Indy",
  "stock_leve" => 0,
  "album_picture" => "https://www.pexels.com/photo/action-adult-dance-dancer-270837/"
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
