require "test_helper"

class GroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group = groups(:one)
  end

  test "should get index" do
    get groups_url
    assert_response :success
  end

  test "should get new" do
    get new_group_url
    assert_response :success
  end

  test "should create group" do
    assert_difference("Group.count") do
      post groups_url, params: { group: { created_by_id: @group.created_by_id, created_by_type: @group.created_by_type, description: @group.description, event_id: @group.event_id, is_private: @group.is_private, name: @group.name, step_id: @group.step_id } }
    end

    assert_redirected_to group_url(Group.last)
  end

  test "should show group" do
    get group_url(@group)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_url(@group)
    assert_response :success
  end

  test "should update group" do
    patch group_url(@group), params: { group: { created_by_id: @group.created_by_id, created_by_type: @group.created_by_type, description: @group.description, event_id: @group.event_id, is_private: @group.is_private, name: @group.name, step_id: @group.step_id } }
    assert_redirected_to group_url(@group)
  end

  test "should destroy group" do
    assert_difference("Group.count", -1) do
      delete group_url(@group)
    end

    assert_redirected_to groups_url
  end
end
