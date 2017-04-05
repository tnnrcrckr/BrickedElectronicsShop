require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @appTitle = "Bricked Electronics"
  end
  
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@appTitle}"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | #{@appTitle}"
  end

  test "should get shop" do
    get shop_url
    assert_response :success
    assert_select "title", "Shop | #{@appTitle}"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | #{@appTitle}"
  end

  test "should get navigation" do
    get navigation_url
    assert_response :success
    assert_select "title", "Site Map | #{@appTitle}"
  end
  
  test "should get reviews" do
    get reviews_url
    assert_response :success
    assert_select "title", "Reviews | #{@appTitle}"
  end
end
