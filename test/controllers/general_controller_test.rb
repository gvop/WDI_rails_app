require 'test_helper'

class GeneralControllerTest < ActionController::TestCase
  test "should get front" do
    get :front
    assert_response :success
  end

end
