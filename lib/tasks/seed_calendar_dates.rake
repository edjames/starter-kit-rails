namespace :db do

  task seed_calendar_dates: :environment do

    print '==> Truncating calendar_dates table ... '
    sql = 'truncate table calendar_dates'
    SqlRunner.execute(sql)
    puts 'done.'

    print '==> Seeding calendar_dates table ... '
    sql = File.read('db/seed_calendar_dates.sql')
    SqlRunner.execute(sql)
    puts 'done.'

  end

end
