class SkeletonWorker
  include Sidekiq::Worker

  def perform(duration = 5)
    sleep duration
  end
end
