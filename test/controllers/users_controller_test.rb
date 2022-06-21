require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name" do
    get users_first_name_url
    assert_response :success
  end

  test "should get last_name" do
    get users_last_name_url
    assert_response :success
  end

  test "should get contact:integer" do
    get users_contact:integer_url
    assert_response :success
  end

  test "should get age:integer" do
    get users_age:integer_url
    assert_response :success
  end

end
