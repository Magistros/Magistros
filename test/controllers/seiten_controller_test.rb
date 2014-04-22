require 'test_helper'

class SeitenControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get bewertung" do
    get :bewertung
    assert_response :success
  end

  test "should get anzeige" do
    get :anzeige
    assert_response :success
  end

  test "should get lehreranzeige" do
    get :lehreranzeige
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

end
