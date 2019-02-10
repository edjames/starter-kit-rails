class SqlRunner

  def self.execute(sql)
    ActiveRecord::Base.connection.execute sql
  end

end
