require 'test_helper'

class TreatmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @treatment = treatments(:one)
  end

  test "should get index" do
    get treatments_url
    assert_response :success
  end

  test "should get new" do
    get new_treatment_url
    assert_response :success
  end

  test "should create treatment" do
    assert_difference('Treatment.count') do
      post treatments_url, params: { treatment: { consultations_id: @treatment.consultations_id, files: @treatment.files, shared: @treatment.shared, treatment_date: @treatment.treatment_date, treatment_location: @treatment.treatment_location } }
    end

    assert_redirected_to treatment_url(Treatment.last)
  end

  test "should show treatment" do
    get treatment_url(@treatment)
    assert_response :success
  end

  test "should get edit" do
    get edit_treatment_url(@treatment)
    assert_response :success
  end

  test "should update treatment" do
    patch treatment_url(@treatment), params: { treatment: { consultations_id: @treatment.consultations_id, files: @treatment.files, shared: @treatment.shared, treatment_date: @treatment.treatment_date, treatment_location: @treatment.treatment_location } }
    assert_redirected_to treatment_url(@treatment)
  end

  test "should destroy treatment" do
    assert_difference('Treatment.count', -1) do
      delete treatment_url(@treatment)
    end

    assert_redirected_to treatments_url
  end
end
