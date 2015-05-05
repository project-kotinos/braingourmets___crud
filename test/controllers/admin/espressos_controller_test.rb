require 'test_helper'

class Admin::EspressosControllerTest < ActionController::TestCase
  setup do
    @admin_espresso = admin_espressos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_espressos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_espresso" do
    assert_difference('Admin::Espresso.count') do
      post :create, admin_espresso: {  }
    end

    assert_redirected_to admin_espresso_path(assigns(:admin_espresso))
  end

  test "should show admin_espresso" do
    get :show, id: @admin_espresso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_espresso
    assert_response :success
  end

  test "should update admin_espresso" do
    patch :update, id: @admin_espresso, admin_espresso: {  }
    assert_redirected_to admin_espresso_path(assigns(:admin_espresso))
  end

  test "should destroy admin_espresso" do
    assert_difference('Admin::Espresso.count', -1) do
      delete :destroy, id: @admin_espresso
    end

    assert_redirected_to admin_espressos_path
  end
end
