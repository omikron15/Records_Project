require_relative( "../models/artist.rb" )
require_relative( "../models/album.rb" )

require("pry-byebug")

Album.delete_all
Artist.delete_all

artist1 = Artist.new({
  "name" => "The White Stripes",
  "artist_picture" => "https://cdn-images-1.medium.com/max/1548/1*9ZdC9Lj2VJINTb-CSvB8pA.jpeg"
})

artist2 = Artist.new({
  "name" => "System of a Down",
  "artist_picture" => "http://assets.blabbermouth.net/media/systemofadown2014band_638.jpg"
})

artist3 = Artist.new({
  "name" => "Rise Against",
  "artist_picture" => "https://yt3.ggpht.com/a-/AJLlDp3fODNC9aadxAKtSIaSXXSUQwf3mSDy2EtMYQ=s900-mo-c-c0xffffffff-rj-k-no"
})

artist4 = Artist.new({
  "name" => "Korn",
  "artist_picture" => "https://pbs.twimg.com/profile_images/739879064928849921/78JQrIAo_400x400.jpg"
})

artist5 = Artist.new({
  "name" => "Rag'n'Bone Man",
  "artist_picture" => "https://www.ragnbonemanmusic.com/wp-content/themes/ragnboneman/assets/img/ragsold.jpg"
})

artist1.save
artist2.save
artist3.save
artist4.save
artist5.save
#Start of Album creation

album1 = Album.new({
  "name" => "Elephant",
  "artist_id" => artist1.id,
  "genre" => "Rock",
  "stock_level" => 11,
  "album_picture" => "http://www.clashmusic.com/sites/default/files/styles/article_feature/public/field/image/R-567336-1249586205.jpeg.jpg?itok=rOlxhzp4"
})

album2 = Album.new({
  "name" => "Icky Thump",
  "artist_id" => artist1.id,
  "genre" => "Rock",
  "stock_level" => 9,
  "album_picture" => "https://images-na.ssl-images-amazon.com/images/I/8132V-jUtgL._SL1425_.jpg"
})

album3 = Album.new({
  "name" => "Toxicity",
  "artist_id" => artist2.id,
  "genre" => "Alternative metal",
  "stock_level" => 3,
  "album_picture" => "https://www.debaser.it/files/2005%2F6617.jpg"
})

album4 = Album.new({
  "name" => "Steal This Album!",
  "artist_id" => artist2.id,
  "genre" => "Alternative metal",
  "stock_level" => 30,
  "album_picture" => "https://upload.wikimedia.org/wikipedia/en/thumb/4/45/StealThisAlbum.png/220px-StealThisAlbum.png"
})

album5 = Album.new({
  "name" => "Appeal to Reason",
  "artist_id" => artist3.id,
  "genre" => "Rock",
  "stock_level" => 1,
  "album_picture" => "https://upload.wikimedia.org/wikipedia/en/thumb/d/df/ATRFinal.jpg/220px-ATRFinal.jpg"
})

album6 = Album.new({
  "name" => "Follow the Leader",
  "artist_id" => artist4.id,
  "genre" => "nu metal",
  "stock_level" => 5,
  "album_picture" => "https://www.musiconvinyl.com/fotos/1573_foto1_product_groot.jpg"
})

album7 = Album.new({
  "name" => "Human",
  "artist_id" => artist5.id,
  "genre" => "Soul",
  "stock_level" => 20,
  "album_picture" => "http://i1.sndcdn.com/artworks-000203109801-33avyd-t500x500.jpg"
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
