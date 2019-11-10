require 'rails_helper'

describe StarterKitWorker do

  subject { described_class.new }

  it 'has default behaviour' do
    expect(subject).to receive(:sleep).with(5)
    subject.perform
  end

  it 'has custom behaviour' do
    expect(subject).to receive(:sleep).with(10)
    subject.perform(10)
  end

end
