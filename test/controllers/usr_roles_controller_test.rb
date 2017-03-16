require 'test_helper'

class UsrRolesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usr_role_url
    assert_response :success
  end
end
