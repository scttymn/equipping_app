require "test_helper"

class OrganizationPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_person = organization_people(:one)
  end

  test "should get index" do
    get organization_people_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_person_url
    assert_response :success
  end

  test "should create organization_person" do
    assert_difference("OrganizationPerson.count") do
      post organization_people_url, params: { organization_person: { organization_id: @organization_person.organization_id, person_id: @organization_person.person_id, title: @organization_person.title, type: @organization_person.type } }
    end

    assert_redirected_to organization_person_url(OrganizationPerson.last)
  end

  test "should show organization_person" do
    get organization_person_url(@organization_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_person_url(@organization_person)
    assert_response :success
  end

  test "should update organization_person" do
    patch organization_person_url(@organization_person), params: { organization_person: { organization_id: @organization_person.organization_id, person_id: @organization_person.person_id, title: @organization_person.title, type: @organization_person.type } }
    assert_redirected_to organization_person_url(@organization_person)
  end

  test "should destroy organization_person" do
    assert_difference("OrganizationPerson.count", -1) do
      delete organization_person_url(@organization_person)
    end

    assert_redirected_to organization_people_url
  end
end
