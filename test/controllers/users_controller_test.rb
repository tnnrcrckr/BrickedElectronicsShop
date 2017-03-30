require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
  end

  test "should get account" do
    get account_url
    assert_response :success
    assert_select "title", "Account | #{@appTitle}"
  end
end
