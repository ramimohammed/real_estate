require 'test_helper'

class XteantsControllerTest < ActionController::TestCase
  setup do
    @xteant = xteants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xteants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xteant" do
    assert_difference('Xteant.count') do
      post :create, xteant: { address: @xteant.address, email: @xteant.email, first_name: @xteant.first_name, last_name: @xteant.last_name, latitude: @xteant.latitude, longitude: @xteant.longitude, phone: @xteant.phone }
    end

    assert_redirected_to xteant_path(assigns(:xteant))
  end

  test "should show xteant" do
    get :show, id: @xteant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xteant
    assert_response :success
  end

  test "should update xteant" do
    patch :update, id: @xteant, xteant: { address: @xteant.address, email: @xteant.email, first_name: @xteant.first_name, last_name: @xteant.last_name, latitude: @xteant.latitude, longitude: @xteant.longitude, phone: @xteant.phone }
    assert_redirected_to xteant_path(assigns(:xteant))
  end

  test "should destroy xteant" do
    assert_difference('Xteant.count', -1) do
      delete :destroy, id: @xteant
    end

    assert_redirected_to xteants_path
  end
end
