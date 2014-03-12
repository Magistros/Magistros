require 'test_helper'

class LehrersControllerTest < ActionController::TestCase
  setup do
    @lehrer = lehrers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lehrers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lehrer" do
    assert_difference('Lehrer.count') do
      post :create, lehrer: { fach1: @lehrer.fach1, fach2: @lehrer.fach2, fach3: @lehrer.fach3, fach4: @lehrer.fach4, name: @lehrer.name }
    end

    assert_redirected_to lehrer_path(assigns(:lehrer))
  end

  test "should show lehrer" do
    get :show, id: @lehrer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lehrer
    assert_response :success
  end

  test "should update lehrer" do
    patch :update, id: @lehrer, lehrer: { fach1: @lehrer.fach1, fach2: @lehrer.fach2, fach3: @lehrer.fach3, fach4: @lehrer.fach4, name: @lehrer.name }
    assert_redirected_to lehrer_path(assigns(:lehrer))
  end

  test "should destroy lehrer" do
    assert_difference('Lehrer.count', -1) do
      delete :destroy, id: @lehrer
    end

    assert_redirected_to lehrers_path
  end
end
