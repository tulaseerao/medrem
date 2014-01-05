require 'test_helper'

class MedicationsControllerTest < ActionController::TestCase
  setup do
    @medication = medications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medication" do
    assert_difference('Medication.count') do
      post :create, medication: { amount_i_take: @medication.amount_i_take, date_prescribed: @medication.date_prescribed, days_ahead_reminder: @medication.days_ahead_reminder, days_i_take: @medication.days_i_take, doctor: @medication.doctor, dosage: @medication.dosage, form: @medication.form, last_refill: @medication.last_refill, name: @medication.name, notes: @medication.notes, pharmacy: @medication.pharmacy, quantity: @medication.quantity }
    end

    assert_redirected_to medication_path(assigns(:medication))
  end

  test "should show medication" do
    get :show, id: @medication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medication
    assert_response :success
  end

  test "should update medication" do
    patch :update, id: @medication, medication: { amount_i_take: @medication.amount_i_take, date_prescribed: @medication.date_prescribed, days_ahead_reminder: @medication.days_ahead_reminder, days_i_take: @medication.days_i_take, doctor: @medication.doctor, dosage: @medication.dosage, form: @medication.form, last_refill: @medication.last_refill, name: @medication.name, notes: @medication.notes, pharmacy: @medication.pharmacy, quantity: @medication.quantity }
    assert_redirected_to medication_path(assigns(:medication))
  end

  test "should destroy medication" do
    assert_difference('Medication.count', -1) do
      delete :destroy, id: @medication
    end

    assert_redirected_to medications_path
  end
end
