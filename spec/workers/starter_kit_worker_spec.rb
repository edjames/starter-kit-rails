require 'rails_helper'

describe StarterKitWorker do

  subject(:worker) { described_class.new }

  it 'has default behaviour' do
    expect(worker).to receive(:sleep).with(5)
    worker.perform
  end

  it 'has custom behaviour' do
    expect(worker).to receive(:sleep).with(10)
    worker.perform(10)
  end

end
