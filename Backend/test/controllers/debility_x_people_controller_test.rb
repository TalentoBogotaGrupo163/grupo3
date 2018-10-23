require 'test_helper'

class DebilityXPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debility_x_person = debility_x_people(:one)
  end

  test "should get index" do
    get debility_x_people_url
    assert_response :success
  end

  test "should get new" do
    get new_debility_x_person_url
    assert_response :success
  end

  test "should create debility_x_person" do
    assert_difference('DebilityXPerson.count') do
      post debility_x_people_url, params: { debility_x_person: { debility_id: @debility_x_person.debility_id, description: @debility_x_person.description, people_id: @debility_x_person.people_id } }
    end

    assert_redirected_to debility_x_person_url(DebilityXPerson.last)
  end

  test "should show debility_x_person" do
    get debility_x_person_url(@debility_x_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_debility_x_person_url(@debility_x_person)
    assert_response :success
  end

  test "should update debility_x_person" do
    patch debility_x_person_url(@debility_x_person), params: { debility_x_person: { debility_id: @debility_x_person.debility_id, description: @debility_x_person.description, people_id: @debility_x_person.people_id } }
    assert_redirected_to debility_x_person_url(@debility_x_person)
  end

  test "should destroy debility_x_person" do
    assert_difference('DebilityXPerson.count', -1) do
      delete debility_x_person_url(@debility_x_person)
    end

    assert_redirected_to debility_x_people_url
  end
end
