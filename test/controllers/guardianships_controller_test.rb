require "test_helper"

class GuardianshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guardianship = guardianships(:one)
  end

  test "should get index" do
    get guardianships_url
    assert_response :success
  end

  test "should get new" do
    get new_guardianship_url
    assert_response :success
  end

  test "should create guardianship" do
    assert_difference("Guardianship.count") do
      post guardianships_url, params: { guardianship: { guardian_id: @guardianship.guardian_id, person_id: @guardianship.person_id } }
    end

    assert_redirected_to guardianship_url(Guardianship.last)
  end

  test "should show guardianship" do
    get guardianship_url(@guardianship)
    assert_response :success
  end

  test "should get edit" do
    get edit_guardianship_url(@guardianship)
    assert_response :success
  end

  test "should update guardianship" do
    patch guardianship_url(@guardianship), params: { guardianship: { guardian_id: @guardianship.guardian_id, person_id: @guardianship.person_id } }
    assert_redirected_to guardianship_url(@guardianship)
  end

  test "should destroy guardianship" do
    assert_difference("Guardianship.count", -1) do
      delete guardianship_url(@guardianship)
    end

    assert_redirected_to guardianships_url
  end
end
