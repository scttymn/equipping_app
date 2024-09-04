require "application_system_test_case"

class GroupMembersTest < ApplicationSystemTestCase
  setup do
    @group_member = group_members(:one)
  end

  test "visiting the index" do
    visit group_members_url
    assert_selector "h1", text: "Group members"
  end

  test "should create group member" do
    visit group_members_url
    click_on "New group member"

    fill_in "Group", with: @group_member.group_id
    check "Is leader" if @group_member.is_leader
    fill_in "Person", with: @group_member.person_id
    click_on "Create Group member"

    assert_text "Group member was successfully created"
    click_on "Back"
  end

  test "should update Group member" do
    visit group_member_url(@group_member)
    click_on "Edit this group member", match: :first

    fill_in "Group", with: @group_member.group_id
    check "Is leader" if @group_member.is_leader
    fill_in "Person", with: @group_member.person_id
    click_on "Update Group member"

    assert_text "Group member was successfully updated"
    click_on "Back"
  end

  test "should destroy Group member" do
    visit group_member_url(@group_member)
    click_on "Destroy this group member", match: :first

    assert_text "Group member was successfully destroyed"
  end
end
