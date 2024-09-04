require "application_system_test_case"

class GuardianshipsTest < ApplicationSystemTestCase
  setup do
    @guardianship = guardianships(:one)
  end

  test "visiting the index" do
    visit guardianships_url
    assert_selector "h1", text: "Guardianships"
  end

  test "should create guardianship" do
    visit guardianships_url
    click_on "New guardianship"

    fill_in "Guardian", with: @guardianship.guardian_id
    fill_in "Person", with: @guardianship.person_id
    click_on "Create Guardianship"

    assert_text "Guardianship was successfully created"
    click_on "Back"
  end

  test "should update Guardianship" do
    visit guardianship_url(@guardianship)
    click_on "Edit this guardianship", match: :first

    fill_in "Guardian", with: @guardianship.guardian_id
    fill_in "Person", with: @guardianship.person_id
    click_on "Update Guardianship"

    assert_text "Guardianship was successfully updated"
    click_on "Back"
  end

  test "should destroy Guardianship" do
    visit guardianship_url(@guardianship)
    click_on "Destroy this guardianship", match: :first

    assert_text "Guardianship was successfully destroyed"
  end
end
