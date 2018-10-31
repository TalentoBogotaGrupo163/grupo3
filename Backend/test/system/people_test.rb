require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Address People", with: @person.address_people
    fill_in "Birthdate People", with: @person.birthdate_people
    fill_in "City", with: @person.city_id
    fill_in "Email People", with: @person.email_people
    fill_in "Gender", with: @person.gender_id
    fill_in "Lastname People", with: @person.lastname_people
    fill_in "Name People", with: @person.name_people
    fill_in "Password People", with: @person.password_people
    fill_in "Phone People", with: @person.phone_people
    fill_in "School", with: @person.school_id
    fill_in "Type Person", with: @person.type_person_id
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Address People", with: @person.address_people
    fill_in "Birthdate People", with: @person.birthdate_people
    fill_in "City", with: @person.city_id
    fill_in "Email People", with: @person.email_people
    fill_in "Gender", with: @person.gender_id
    fill_in "Lastname People", with: @person.lastname_people
    fill_in "Name People", with: @person.name_people
    fill_in "Password People", with: @person.password_people
    fill_in "Phone People", with: @person.phone_people
    fill_in "School", with: @person.school_id
    fill_in "Type Person", with: @person.type_person_id
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
