require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_valid
    user = build(:user)
    assert user.valid?
  end
end
