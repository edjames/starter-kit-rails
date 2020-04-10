namespace :development do

  desc 'Truncate all tables and Redis data, then run db:seed'
  task truncate_and_seed: :environment do
    EnvHelper.ensure_not_production!
    ActiveRecord::Base.logger.level = 2

    Rake::Task['development:truncate_tables'].invoke
    Rake::Task['db:seed'].invoke
    Rake::Task['db:seed_calendar_dates'].invoke
  end

  desc 'Truncate all tables and Redis data'
  task truncate_tables: :environment do
    EnvHelper.ensure_not_production!

    excluded_tables = %w[ar_internal_metadata schema_migrations]
    tables = DbHelper.all_tables - excluded_tables

    tables.sort.each do |table|
      puts "Truncating #{table} ... "
      ActiveRecord::Base.connection.execute("truncate table #{table} cascade")
    end

    puts "Truncating Redis data ... "
    Sidekiq.redis { |conn| conn.flushdb }
  end

end
