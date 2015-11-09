require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get admin_page" do
    get :admin_page
    assert_response :success
  end

end
