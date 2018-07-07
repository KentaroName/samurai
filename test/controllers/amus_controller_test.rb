require 'test_helper'

class AmusControllerTest < ActionController::TestCase
  setup do
    @amu = amus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amu" do
    assert_difference('Amu.count') do
      post :create, amu: { age: @amu.age, name: @amu.name }
    end

    assert_redirected_to amu_path(assigns(:amu))
  end

  test "should show amu" do
    get :show, id: @amu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amu
    assert_response :success
  end

  test "should update amu" do
    patch :update, id: @amu, amu: { age: @amu.age, name: @amu.name }
    assert_redirected_to amu_path(assigns(:amu))
  end

  test "should destroy amu" do
    assert_difference('Amu.count', -1) do
      delete :destroy, id: @amu
    end

    assert_redirected_to amus_path
  end
end
