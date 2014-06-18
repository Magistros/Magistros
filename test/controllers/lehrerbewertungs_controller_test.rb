require 'test_helper'

class LehrerbewertungsControllerTest < ActionController::TestCase
  setup do
    @lehrerbewertung = lehrerbewertungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lehrerbewertungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lehrerbewertung" do
    assert_difference('Lehrerbewertung.count') do
      post :create, lehrerbewertung: { anzahl: @lehrerbewertung.anzahl, fr: @lehrerbewertung.fr, lehrerid: @lehrerbewertung.lehrerid, ug: @lehrerbewertung.ug, ums: @lehrerbewertung.ums, uv: @lehrerbewertung.uv }
    end

    assert_redirected_to lehrerbewertung_path(assigns(:lehrerbewertung))
  end

  test "should show lehrerbewertung" do
    get :show, id: @lehrerbewertung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lehrerbewertung
    assert_response :success
  end

  test "should update lehrerbewertung" do
    patch :update, id: @lehrerbewertung, lehrerbewertung: { anzahl: @lehrerbewertung.anzahl, fr: @lehrerbewertung.fr, lehrerid: @lehrerbewertung.lehrerid, ug: @lehrerbewertung.ug, ums: @lehrerbewertung.ums, uv: @lehrerbewertung.uv }
    assert_redirected_to lehrerbewertung_path(assigns(:lehrerbewertung))
  end

  test "should destroy lehrerbewertung" do
    assert_difference('Lehrerbewertung.count', -1) do
      delete :destroy, id: @lehrerbewertung
    end

    assert_redirected_to lehrerbewertungs_path
  end
end
