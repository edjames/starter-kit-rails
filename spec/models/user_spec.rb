require 'rails_helper'

describe User, type: :model do

  subject { build(:user) }

  specify { expect(subject).to be_valid }

end
