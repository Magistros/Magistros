require 'test_helper'

class LehrerviewControllerTest < ActionController::TestCase
  test "should get lehrer1" do
    get :lehrer1
    assert_response :success
  end

end
