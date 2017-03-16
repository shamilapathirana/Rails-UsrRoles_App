require 'test_helper'

class UsrUserTest < ActiveSupport::TestCase

  test "invalid without role_name" do
    @role.role_name = nil
    refute @role.valid?, "saved user without a name"
    assert_not_nil @role.errors[:role_name], "no validation error for role name present"
  end

end
