require 'rails_helper'

describe Status do

  subject(:status) { described_class.new }

  let(:hostname) { `hostname`.strip }

  specify { expect(status.ip).to match(/^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$/) }
  specify { expect(status.hostname).to eq hostname }
  specify { expect(status.env).to eq Rails.env }
  specify { expect(status.boot_time).to eq StarterKit::BOOT_TIME }

end
