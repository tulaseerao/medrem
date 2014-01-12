require 'test_helper'

class MednamesControllerTest < ActionController::TestCase
  setup do
    @medname = mednames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mednames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medname" do
    assert_difference('Medname.count') do
      post :create, medname: { form: @medname.form, name: @medname.name, purpose: @medname.purpose, strength: @medname.strength }
    end

    assert_redirected_to medname_path(assigns(:medname))
  end

  test "should show medname" do
    get :show, id: @medname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medname
    assert_response :success
  end

  test "should update medname" do
    patch :update, id: @medname, medname: { form: @medname.form, name: @medname.name, purpose: @medname.purpose, strength: @medname.strength }
    assert_redirected_to medname_path(assigns(:medname))
  end

  test "should destroy medname" do
    assert_difference('Medname.count', -1) do
      delete :destroy, id: @medname
    end

    assert_redirected_to mednames_path
  end
end
