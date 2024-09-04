require "application_system_test_case"

class InvitationsTest < ApplicationSystemTestCase
  setup do
    @invitation = invitations(:one)
  end

  test "visiting the index" do
    visit invitations_url
    assert_selector "h1", text: "Invitations"
  end

  test "should create invitation" do
    visit invitations_url
    click_on "New invitation"

    fill_in "Email", with: @invitation.email
    fill_in "Expires at", with: @invitation.expires_at
    fill_in "Invitable", with: @invitation.invitable_id
    fill_in "Invitable type", with: @invitation.invitable_type
    fill_in "Invited by", with: @invitation.invited_by_id
    fill_in "Status", with: @invitation.status
    fill_in "Token", with: @invitation.token
    click_on "Create Invitation"

    assert_text "Invitation was successfully created"
    click_on "Back"
  end

  test "should update Invitation" do
    visit invitation_url(@invitation)
    click_on "Edit this invitation", match: :first

    fill_in "Email", with: @invitation.email
    fill_in "Expires at", with: @invitation.expires_at.to_s
    fill_in "Invitable", with: @invitation.invitable_id
    fill_in "Invitable type", with: @invitation.invitable_type
    fill_in "Invited by", with: @invitation.invited_by_id
    fill_in "Status", with: @invitation.status
    fill_in "Token", with: @invitation.token
    click_on "Update Invitation"

    assert_text "Invitation was successfully updated"
    click_on "Back"
  end

  test "should destroy Invitation" do
    visit invitation_url(@invitation)
    click_on "Destroy this invitation", match: :first

    assert_text "Invitation was successfully destroyed"
  end
end
