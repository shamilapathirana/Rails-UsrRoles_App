require 'test_helper'

class UsrUserTest < ActiveSupport::TestCase

  test "should not save article without role name" do
    user = UsrUser.new
    assert_not user.save, "Saved the article without a title"
  end

end
