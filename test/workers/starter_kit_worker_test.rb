require 'test_helper'

class StarterKitWorkerTest < Minitest::Test
  def test_perform_default
    worker = StarterKitWorker.new
    worker.expects(:sleep).with(5)
    worker.perform
  end

  def test_perform
    worker = StarterKitWorker.new
    worker.expects(:sleep).with(10)
    worker.perform(10)
  end
end
