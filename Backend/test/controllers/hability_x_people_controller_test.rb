require 'test_helper'

class HabilityXPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hability_x_person = hability_x_people(:one)
  end

  test "should get index" do
    get hability_x_people_url
    assert_response :success
  end

  test "should get new" do
    get new_hability_x_person_url
    assert_response :success
  end

  test "should create hability_x_person" do
    assert_difference('HabilityXPerson.count') do
      post hability_x_people_url, params: { hability_x_person: { description: @hability_x_person.description, hability_id: @hability_x_person.hability_id, people_id: @hability_x_person.people_id } }
    end

    assert_redirected_to hability_x_person_url(HabilityXPerson.last)
  end

  test "should show hability_x_person" do
    get hability_x_person_url(@hability_x_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_hability_x_person_url(@hability_x_person)
    assert_response :success
  end

  test "should update hability_x_person" do
    patch hability_x_person_url(@hability_x_person), params: { hability_x_person: { description: @hability_x_person.description, hability_id: @hability_x_person.hability_id, people_id: @hability_x_person.people_id } }
    assert_redirected_to hability_x_person_url(@hability_x_person)
  end

  test "should destroy hability_x_person" do
    assert_difference('HabilityXPerson.count', -1) do
      delete hability_x_person_url(@hability_x_person)
    end

    assert_redirected_to hability_x_people_url
  end
end
