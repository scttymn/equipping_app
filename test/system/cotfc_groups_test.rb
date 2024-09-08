require "application_system_test_case"

class CotfcGroupsTest < ApplicationSystemTestCase
  setup do
    @cotfc_group = cotfc_groups(:one)
  end

  test "visiting the index" do
    visit cotfc_groups_url
    assert_selector "h1", text: "Cotfc groups"
  end

  test "should create cotfc group" do
    visit cotfc_groups_url
    click_on "New cotfc group"

    check "Child friendly" if @cotfc_group.child_friendly
    fill_in "Day", with: @cotfc_group.day
    fill_in "Description", with: @cotfc_group.description
    fill_in "Form url", with: @cotfc_group.form_url
    fill_in "Host", with: @cotfc_group.host
    fill_in "Location", with: @cotfc_group.location
    fill_in "Photo url", with: @cotfc_group.photo_url
    fill_in "Subject", with: @cotfc_group.subject
    fill_in "Time", with: @cotfc_group.time
    fill_in "Type", with: @cotfc_group.type
    click_on "Create Cotfc group"

    assert_text "Cotfc group was successfully created"
    click_on "Back"
  end

  test "should update Cotfc group" do
    visit cotfc_group_url(@cotfc_group)
    click_on "Edit this cotfc group", match: :first

    check "Child friendly" if @cotfc_group.child_friendly
    fill_in "Day", with: @cotfc_group.day
    fill_in "Description", with: @cotfc_group.description
    fill_in "Form url", with: @cotfc_group.form_url
    fill_in "Host", with: @cotfc_group.host
    fill_in "Location", with: @cotfc_group.location
    fill_in "Photo url", with: @cotfc_group.photo_url
    fill_in "Subject", with: @cotfc_group.subject
    fill_in "Time", with: @cotfc_group.time
    fill_in "Type", with: @cotfc_group.type
    click_on "Update Cotfc group"

    assert_text "Cotfc group was successfully updated"
    click_on "Back"
  end

  test "should destroy Cotfc group" do
    visit cotfc_group_url(@cotfc_group)
    click_on "Destroy this cotfc group", match: :first

    assert_text "Cotfc group was successfully destroyed"
  end
end
