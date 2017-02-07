require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get help" do
    get pages_help_url
    assert_response :success
  end

  test "should get shop" do
    get pages_shop_url
    assert_response :success
  end

  test "should get account" do
    get pages_account_url
    assert_response :success
  end

end
