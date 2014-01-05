require 'test_helper'

class PharmaciesControllerTest < ActionController::TestCase
  setup do
    @pharmacy = pharmacies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pharmacies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pharmacy" do
    assert_difference('Pharmacy.count') do
      post :create, pharmacy: { address1: @pharmacy.address1, address2: @pharmacy.address2, city: @pharmacy.city, name: @pharmacy.name, phone: @pharmacy.phone, state: @pharmacy.state, website: @pharmacy.website, zip: @pharmacy.zip }
    end

    assert_redirected_to pharmacy_path(assigns(:pharmacy))
  end

  test "should show pharmacy" do
    get :show, id: @pharmacy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pharmacy
    assert_response :success
  end

  test "should update pharmacy" do
    patch :update, id: @pharmacy, pharmacy: { address1: @pharmacy.address1, address2: @pharmacy.address2, city: @pharmacy.city, name: @pharmacy.name, phone: @pharmacy.phone, state: @pharmacy.state, website: @pharmacy.website, zip: @pharmacy.zip }
    assert_redirected_to pharmacy_path(assigns(:pharmacy))
  end

  test "should destroy pharmacy" do
    assert_difference('Pharmacy.count', -1) do
      delete :destroy, id: @pharmacy
    end

    assert_redirected_to pharmacies_path
  end
end
