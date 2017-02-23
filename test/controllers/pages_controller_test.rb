require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @appTitle = "Bricked Electronics"
  end
  
  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@appTitle}"
  end

  test "should get help" do
    get pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@appTitle}"
  end

  test "should get shop" do
    get pages_shop_url
    assert_response :success
    assert_select "title", "Shop | #{@appTitle}"
  end

  test "should get account" do
    get pages_account_url
    assert_response :success
    assert_select "title", "Account | #{@appTitle}"
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
    assert_select "title", "About | #{@appTitle}"
  end

  test "should get navigation" do
    get pages_navigation_url
    assert_response :success
    assert_select "title", "Site Map | #{@appTitle}"
  end

end
