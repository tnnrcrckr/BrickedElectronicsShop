require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @appTitle = "Bricked Electronics"
  end
  

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | #{@appTitle}"
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
  
end
