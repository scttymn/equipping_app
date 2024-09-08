require "test_helper"

class CotfcGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotfc_group = cotfc_groups(:one)
  end

  test "should get index" do
    get cotfc_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_cotfc_group_url
    assert_response :success
  end

  test "should create cotfc_group" do
    assert_difference("CotfcGroup.count") do
      post cotfc_groups_url, params: { cotfc_group: { child_friendly: @cotfc_group.child_friendly, day: @cotfc_group.day, description: @cotfc_group.description, form_url: @cotfc_group.form_url, host: @cotfc_group.host, location: @cotfc_group.location, photo_url: @cotfc_group.photo_url, subject: @cotfc_group.subject, time: @cotfc_group.time, type: @cotfc_group.type } }
    end

    assert_redirected_to cotfc_group_url(CotfcGroup.last)
  end

  test "should show cotfc_group" do
    get cotfc_group_url(@cotfc_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotfc_group_url(@cotfc_group)
    assert_response :success
  end

  test "should update cotfc_group" do
    patch cotfc_group_url(@cotfc_group), params: { cotfc_group: { child_friendly: @cotfc_group.child_friendly, day: @cotfc_group.day, description: @cotfc_group.description, form_url: @cotfc_group.form_url, host: @cotfc_group.host, location: @cotfc_group.location, photo_url: @cotfc_group.photo_url, subject: @cotfc_group.subject, time: @cotfc_group.time, type: @cotfc_group.type } }
    assert_redirected_to cotfc_group_url(@cotfc_group)
  end

  test "should destroy cotfc_group" do
    assert_difference("CotfcGroup.count", -1) do
      delete cotfc_group_url(@cotfc_group)
    end

    assert_redirected_to cotfc_groups_url
  end
end
