require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { address_person: @person.address_person, age_person: @person.age_person, city_id: @person.city_id, code_person: @person.code_person, email_person: @person.email_person, gender_id: @person.gender_id, name_person: @person.name_person, password_person: @person.password_person, school_id: @person.school_id, type_users_id: @person.type_users_id } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { address_person: @person.address_person, age_person: @person.age_person, city_id: @person.city_id, code_person: @person.code_person, email_person: @person.email_person, gender_id: @person.gender_id, name_person: @person.name_person, password_person: @person.password_person, school_id: @person.school_id, type_users_id: @person.type_users_id } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
