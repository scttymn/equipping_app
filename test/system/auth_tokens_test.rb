require "application_system_test_case"

class AuthTokensTest < ApplicationSystemTestCase
  setup do
    @auth_token = auth_tokens(:one)
  end

  test "visiting the index" do
    visit auth_tokens_url
    assert_selector "h1", text: "Auth tokens"
  end

  test "should create auth token" do
    visit auth_tokens_url
    click_on "New auth token"

    fill_in "Expires at", with: @auth_token.expires_at
    fill_in "Person", with: @auth_token.person_id
    fill_in "Token", with: @auth_token.token
    click_on "Create Auth token"

    assert_text "Auth token was successfully created"
    click_on "Back"
  end

  test "should update Auth token" do
    visit auth_token_url(@auth_token)
    click_on "Edit this auth token", match: :first

    fill_in "Expires at", with: @auth_token.expires_at.to_s
    fill_in "Person", with: @auth_token.person_id
    fill_in "Token", with: @auth_token.token
    click_on "Update Auth token"

    assert_text "Auth token was successfully updated"
    click_on "Back"
  end

  test "should destroy Auth token" do
    visit auth_token_url(@auth_token)
    click_on "Destroy this auth token", match: :first

    assert_text "Auth token was successfully destroyed"
  end
end
