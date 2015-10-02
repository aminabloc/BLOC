require 'test_helper'

class JappsControllerTest < ActionController::TestCase
  setup do
    @japp = japps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:japps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create japp" do
    assert_difference('Japp.count') do
      post :create, japp: { cover: @japp.cover, resume: @japp.resume, statement: @japp.statement }
    end

    assert_redirected_to japp_path(assigns(:japp))
  end

  test "should show japp" do
    get :show, id: @japp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @japp
    assert_response :success
  end

  test "should update japp" do
    patch :update, id: @japp, japp: { cover: @japp.cover, resume: @japp.resume, statement: @japp.statement }
    assert_redirected_to japp_path(assigns(:japp))
  end

  test "should destroy japp" do
    assert_difference('Japp.count', -1) do
      delete :destroy, id: @japp
    end

    assert_redirected_to japps_path
  end
end
