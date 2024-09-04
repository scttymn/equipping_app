require "application_system_test_case"

class OrganizationPeopleTest < ApplicationSystemTestCase
  setup do
    @organization_person = organization_people(:one)
  end

  test "visiting the index" do
    visit organization_people_url
    assert_selector "h1", text: "Organization people"
  end

  test "should create organization person" do
    visit organization_people_url
    click_on "New organization person"

    fill_in "Organization", with: @organization_person.organization_id
    fill_in "Person", with: @organization_person.person_id
    fill_in "Title", with: @organization_person.title
    fill_in "Type", with: @organization_person.type
    click_on "Create Organization person"

    assert_text "Organization person was successfully created"
    click_on "Back"
  end

  test "should update Organization person" do
    visit organization_person_url(@organization_person)
    click_on "Edit this organization person", match: :first

    fill_in "Organization", with: @organization_person.organization_id
    fill_in "Person", with: @organization_person.person_id
    fill_in "Title", with: @organization_person.title
    fill_in "Type", with: @organization_person.type
    click_on "Update Organization person"

    assert_text "Organization person was successfully updated"
    click_on "Back"
  end

  test "should destroy Organization person" do
    visit organization_person_url(@organization_person)
    click_on "Destroy this organization person", match: :first

    assert_text "Organization person was successfully destroyed"
  end
end
