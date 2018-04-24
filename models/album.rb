require_relative( '../db/sql_runner' )

class Album

  attr_reader(:id)
  attr_accessor(:name, :artist_id, :genre, :stock_level, :album_picture)

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @artist_id = options['artist_id'].to_i
    @genre = options['genre']
    @stock_level = options['stock_level'].to_i
    @album_picture = options['album_picture']
  end

  def save()
    sql = "INSERT INTO albums
    (name, artist_id, genre, stock_level, album_picture)
    VALUES ($1, $2, $3, $4, $5)
    RETURNING id"
    values = [@name, @artist_id, @genre, @stock_level, @album_picture]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM albums ORDER BY name ASC"
    results = SqlRunner.run( sql )
    return results.map { |album| Album.new(album) }
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run( sql )
  end

  def destroy()
    sql = "DELETE FROM albums WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def update()
    sql = "UPDATE albums
    SET(name, artist_id, genre, stock_level, album_picture) =
    ($1, $2, $3, $4, $5) WHERE id = $6"
    values = [@name, @artist_id, @genre, @stock_level, @album_picture, @id]
    SqlRunner.run( sql, values )
  end

  def self.find_by_id(id)
      sql = "SELECT * FROM albums WHERE id = $1"
      values = [id]
      result = SqlRunner.run(sql, values)
      return Album.new(result.first)
  end

  def artist()
      sql = "SELECT * FROM artists WHERE id = $1"
      values = [@artist_id]
      result = SqlRunner.run(sql, values)
      return Artist.new(result.first)
  end

  def self.map_albums(album_data)
    return album_data.map {|album_hash| Album.new(album_hash)}
  end

  def stock_category()
    if @stock_level == 0
      return "Out of Stock"
    elsif @stock_level <= 10
      return "Low Stock Level"
    elsif @stock_level <= 20
      return "Medium Stock Level"
    else return "High Stock Level"
    end
  end

  def self.get_stock_group(category)
    results = []
    albums = self.all()
    for album in albums
      if album.stock_category == category
        results.push(album)
      end
    end
    return results
  end


end
