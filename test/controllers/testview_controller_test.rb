require 'test_helper'

class TestviewControllerTest < ActionController::TestCase
  test "should get show1" do
    get :show1
    assert_response :success
  end

  test "should get show2" do
    get :show2
    assert_response :success
  end

end
