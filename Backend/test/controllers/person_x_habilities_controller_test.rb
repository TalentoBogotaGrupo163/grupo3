require 'test_helper'

class PersonXHabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_x_hability = person_x_habilities(:one)
  end

  test "should get index" do
    get person_x_habilities_url
    assert_response :success
  end

  test "should get new" do
    get new_person_x_hability_url
    assert_response :success
  end

  test "should create person_x_hability" do
    assert_difference('PersonXHability.count') do
      post person_x_habilities_url, params: { person_x_hability: { description: @person_x_hability.description, hability_id: @person_x_hability.hability_id, person_id: @person_x_hability.person_id } }
    end

    assert_redirected_to person_x_hability_url(PersonXHability.last)
  end

  test "should show person_x_hability" do
    get person_x_hability_url(@person_x_hability)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_x_hability_url(@person_x_hability)
    assert_response :success
  end

  test "should update person_x_hability" do
    patch person_x_hability_url(@person_x_hability), params: { person_x_hability: { description: @person_x_hability.description, hability_id: @person_x_hability.hability_id, person_id: @person_x_hability.person_id } }
    assert_redirected_to person_x_hability_url(@person_x_hability)
  end

  test "should destroy person_x_hability" do
    assert_difference('PersonXHability.count', -1) do
      delete person_x_hability_url(@person_x_hability)
    end

    assert_redirected_to person_x_habilities_url
  end
end
