require 'test_helper'

class PotesControllerTest < ActionController::TestCase
  setup do
    @pote = potes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pote" do
    assert_difference('Pote.count') do
      post :create, pote: { age: @pote.age, name: @pote.name }
    end

    assert_redirected_to pote_path(assigns(:pote))
  end

  test "should show pote" do
    get :show, id: @pote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pote
    assert_response :success
  end

  test "should update pote" do
    patch :update, id: @pote, pote: { age: @pote.age, name: @pote.name }
    assert_redirected_to pote_path(assigns(:pote))
  end

  test "should destroy pote" do
    assert_difference('Pote.count', -1) do
      delete :destroy, id: @pote
    end

    assert_redirected_to potes_path
  end
end
