require 'rails_helper'

describe User, type: :model do

  subject(:user) { build(:user) }

  specify { expect(user).to be_valid }

end
