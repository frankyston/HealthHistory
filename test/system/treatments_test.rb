require "application_system_test_case"

class TreatmentsTest < ApplicationSystemTestCase
  setup do
    @treatment = treatments(:one)
  end

  test "visiting the index" do
    visit treatments_url
    assert_selector "h1", text: "Treatments"
  end

  test "creating a Treatment" do
    visit treatments_url
    click_on "New Treatment"

    fill_in "Consultations", with: @treatment.consultations_id
    fill_in "Files", with: @treatment.files
    check "Shared" if @treatment.shared
    fill_in "Treatment date", with: @treatment.treatment_date
    fill_in "Treatment location", with: @treatment.treatment_location
    click_on "Create Treatment"

    assert_text "Treatment was successfully created"
    click_on "Back"
  end

  test "updating a Treatment" do
    visit treatments_url
    click_on "Edit", match: :first

    fill_in "Consultations", with: @treatment.consultations_id
    fill_in "Files", with: @treatment.files
    check "Shared" if @treatment.shared
    fill_in "Treatment date", with: @treatment.treatment_date
    fill_in "Treatment location", with: @treatment.treatment_location
    click_on "Update Treatment"

    assert_text "Treatment was successfully updated"
    click_on "Back"
  end

  test "destroying a Treatment" do
    visit treatments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Treatment was successfully destroyed"
  end
end
