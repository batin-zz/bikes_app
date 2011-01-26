require 'test_helper'

class BikersControllerTest < ActionController::TestCase
  setup do
    @biker = bikers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bikers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biker" do
    assert_difference('Biker.count') do
      post :create, :biker => @biker.attributes
    end

    assert_redirected_to biker_path(assigns(:biker))
  end

  test "should show biker" do
    get :show, :id => @biker.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @biker.to_param
    assert_response :success
  end

  test "should update biker" do
    put :update, :id => @biker.to_param, :biker => @biker.attributes
    assert_redirected_to biker_path(assigns(:biker))
  end

  test "should destroy biker" do
    assert_difference('Biker.count', -1) do
      delete :destroy, :id => @biker.to_param
    end

    assert_redirected_to bikers_path
  end
end
