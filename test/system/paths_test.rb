require "application_system_test_case"

class PathsTest < ApplicationSystemTestCase
  setup do
    @path = paths(:one)
  end

  test "visiting the index" do
    visit paths_url
    assert_selector "h1", text: "Paths"
  end

  test "should create path" do
    visit paths_url
    click_on "New path"

    fill_in "Created by", with: @path.created_by_id
    fill_in "Created by type", with: @path.created_by_type
    fill_in "Description", with: @path.description
    fill_in "Name", with: @path.name
    click_on "Create Path"

    assert_text "Path was successfully created"
    click_on "Back"
  end

  test "should update Path" do
    visit path_url(@path)
    click_on "Edit this path", match: :first

    fill_in "Created by", with: @path.created_by_id
    fill_in "Created by type", with: @path.created_by_type
    fill_in "Description", with: @path.description
    fill_in "Name", with: @path.name
    click_on "Update Path"

    assert_text "Path was successfully updated"
    click_on "Back"
  end

  test "should destroy Path" do
    visit path_url(@path)
    click_on "Destroy this path", match: :first

    assert_text "Path was successfully destroyed"
  end
end
