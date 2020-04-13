require 'rails_helper'

describe Status do

  subject { described_class.new }

  let(:hostname) { `hostname`.strip }

  specify { expect(subject.ip).to match(/^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$/) }
  specify { expect(subject.hostname).to eq hostname }
  specify { expect(subject.env).to eq Rails.env }
  specify { expect(subject.boot_time).to eq StarterKit::BOOT_TIME }

end
