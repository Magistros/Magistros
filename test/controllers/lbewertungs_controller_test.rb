require 'test_helper'

class LbewertungsControllerTest < ActionController::TestCase
  setup do
    @lbewertung = lbewertungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lbewertungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lbewertung" do
    assert_difference('Lbewertung.count') do
      post :create, lbewertung: { anzahl: @lbewertung.anzahl, fr: @lbewertung.fr, lehrerid: @lbewertung.lehrerid, ug: @lbewertung.ug, ums: @lbewertung.ums, uv: @lbewertung.uv }
    end

    assert_redirected_to lbewertung_path(assigns(:lbewertung))
  end

  test "should show lbewertung" do
    get :show, id: @lbewertung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lbewertung
    assert_response :success
  end

  test "should update lbewertung" do
    patch :update, id: @lbewertung, lbewertung: { anzahl: @lbewertung.anzahl, fr: @lbewertung.fr, lehrerid: @lbewertung.lehrerid, ug: @lbewertung.ug, ums: @lbewertung.ums, uv: @lbewertung.uv }
    assert_redirected_to lbewertung_path(assigns(:lbewertung))
  end

  test "should destroy lbewertung" do
    assert_difference('Lbewertung.count', -1) do
      delete :destroy, id: @lbewertung
    end

    assert_redirected_to lbewertungs_path
  end
end
