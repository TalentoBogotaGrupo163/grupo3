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
      post people_url, params: { person: { address_people: @person.address_people, birthdate_people: @person.birthdate_people, city_id: @person.city_id, email_people: @person.email_people, gender_id: @person.gender_id, lastname_people: @person.lastname_people, name_people: @person.name_people, password_people: @person.password_people, phone_people: @person.phone_people, school_id: @person.school_id, type_person_id: @person.type_person_id } }
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
    patch person_url(@person), params: { person: { address_people: @person.address_people, birthdate_people: @person.birthdate_people, city_id: @person.city_id, email_people: @person.email_people, gender_id: @person.gender_id, lastname_people: @person.lastname_people, name_people: @person.name_people, password_people: @person.password_people, phone_people: @person.phone_people, school_id: @person.school_id, type_person_id: @person.type_person_id } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
