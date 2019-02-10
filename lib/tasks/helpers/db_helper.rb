class DbHelper

  def self.db_user
    if Rails.env.development?
      Rails.application.config.database_configuration['development']['username']
    else
      %r{postgres\:\/\/(\w+)\:.*}.match(ENV['DATABASE_URL'])[1]
    end
  end

  def self.all_tables
    sql = "SELECT tablename FROM pg_catalog.pg_tables where tableowner = '#{db_user}'"
    SqlRunner.execute(sql).values.flatten
  end

end
