require 'test_helper'

class UsersUserControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get users_user_create_url
    assert_response :success
  end

  test "should get destroy" do
    get users_user_destroy_url
    assert_response :success
  end

end
