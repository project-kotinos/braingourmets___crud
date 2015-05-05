require 'test_helper'

class Admin::DogsControllerTest < ActionController::TestCase
  setup do
    @admin_dog = admin_dogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_dogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_dog" do
    assert_difference('Admin::Dog.count') do
      post :create, admin_dog: {  }
    end

    assert_redirected_to admin_dog_path(assigns(:admin_dog))
  end

  test "should show admin_dog" do
    get :show, id: @admin_dog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_dog
    assert_response :success
  end

  test "should update admin_dog" do
    patch :update, id: @admin_dog, admin_dog: {  }
    assert_redirected_to admin_dog_path(assigns(:admin_dog))
  end

  test "should destroy admin_dog" do
    assert_difference('Admin::Dog.count', -1) do
      delete :destroy, id: @admin_dog
    end

    assert_redirected_to admin_dogs_path
  end
end
