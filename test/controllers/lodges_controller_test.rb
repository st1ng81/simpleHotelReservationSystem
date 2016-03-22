require 'test_helper'

class LodgesControllerTest < ActionController::TestCase
  setup do
    @lodge = lodges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lodges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lodge" do
    assert_difference('Lodge.count') do
      post :create, lodge: {  }
    end

    assert_redirected_to lodge_path(assigns(:lodge))
  end

  test "should show lodge" do
    get :show, id: @lodge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lodge
    assert_response :success
  end

  test "should update lodge" do
    patch :update, id: @lodge, lodge: {  }
    assert_redirected_to lodge_path(assigns(:lodge))
  end

  test "should destroy lodge" do
    assert_difference('Lodge.count', -1) do
      delete :destroy, id: @lodge
    end

    assert_redirected_to lodges_path
  end
end
