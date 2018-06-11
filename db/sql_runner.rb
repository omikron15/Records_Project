require( 'pg' )

class SqlRunner

  # def self.run( sql, values = [] )
  #   begin
  #     db = PG.connect({ dbname: 'records', host: 'localhost' })
  #     db.prepare("query", sql)
  #     result = db.exec_prepared( "query", values )
  #   ensure
  #     db.close() if db != nil
  #   end
  #   return result
  # end

  def self.run(sql, values = [])
   begin
     db = PG.connect({
       dbname: 'dbk3bemavof79j',
       host: 'ec2-107-20-195-181.compute-1.amazonaws.com',
       port: '5432',
       user: 'wlievxfkoptnze',
       password: '77daef2944cf3fb017f24f2619e5cefe79e9f6683caf27ed5f8bc45dd8254aff'
       })
     db.prepare("query", sql)
     result = db.exec_prepared("query", values)
   ensure
     db.close()
   end
   return result
 end

end
