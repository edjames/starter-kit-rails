require 'clockwork'
require 'clockwork/database_events'
require_relative 'boot'
require_relative 'environment'

module Clockwork
  handler do |job|
    job.to_s.classify.constantize.perform_async
  end

  # required to enable database syncing support
  Clockwork.manager = DatabaseEvents::Manager.new

  sync_database_events model: ScheduledJob, every: 1.minute do |job|
    job.job_class.constantize.perform_async
  end

  # For scheduled events, please see the `clockwork_database_events` database table.
  # Additionally, see the db/seeds.rb file for details about specific jobs.

end
