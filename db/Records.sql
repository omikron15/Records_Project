DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists
(
  id SERIAL8 primary key NOT NULL,
  name VARCHAR(255),
  artist_picture VARCHAR(1500)
);

CREATE TABLE albums
(
  id SERIAL8 primary key NOT NULL,
  name VARCHAR(255),
  artist_id INT references artists(id) ON DELETE CASCADE,
  genre VARCHAR(255),
  stock_level INT,
  album_picture VARCHAR(1500)
);
