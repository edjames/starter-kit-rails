require 'test_helper'

class SkeletonWorkerTest < Minitest::Test
  def test_perform_default
    worker = SkeletonWorker.new
    worker.expects(:sleep).with(5)
    worker.perform
  end

  def test_perform
    worker = SkeletonWorker.new
    worker.expects(:sleep).with(10)
    worker.perform(10)
  end
end
