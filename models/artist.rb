require_relative( '../db/sql_runner' )

class Artist

  attr_reader(:id)
  attr_accessor(:name, :artist_picture)

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @artist_picture = options['artist_picture']
  end

  def save()
    sql = "INSERT INTO artists
    (name, artist_picture)
    VALUES ($1, $2)
    RETURNING id"
    values = [@name, @artist_picture]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM artists"
    results = SqlRunner.run( sql )
    return results.map { |artist| Artist.new(artist) }
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run( sql )
  end

  def destroy()
    sql = "DELETE FROM artists WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def update()
    sql = "UPDATE artists
    SET(name, artist_picture) =
    ($1, $2) WHERE id = $3"
    values = [@name, @artist_picture, @id]
    SqlRunner.run( sql, values )
  end

  def self.find_by_id(id)
      sql = "SELECT * FROM artists WHERE id = $1"
      values = [id]
      result = SqlRunner.run(sql, values)
      return Artist.new(result.first)
  end

  def albums()
      sql = "SELECT * FROM albums WHERE artist_id = $1"
      values = [@id]
      results = SqlRunner.run(sql, values)
      return Album.map_albums(results)
  end

  def self.map_artists(artist_data)
    return artist_data.map {|artist_hash| Artist.new(artist_hash)}
  end

end
