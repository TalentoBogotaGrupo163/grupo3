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

    fill_in "Address Person", with: @person.address_person
    fill_in "Age Person", with: @person.age_person
    fill_in "City", with: @person.city_id
    fill_in "Code Person", with: @person.code_person
    fill_in "Email Person", with: @person.email_person
    fill_in "Gender", with: @person.gender_id
    fill_in "Name Person", with: @person.name_person
    fill_in "Password Person", with: @person.password_person
    fill_in "School", with: @person.school_id
    fill_in "Type Users", with: @person.type_users_id
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Address Person", with: @person.address_person
    fill_in "Age Person", with: @person.age_person
    fill_in "City", with: @person.city_id
    fill_in "Code Person", with: @person.code_person
    fill_in "Email Person", with: @person.email_person
    fill_in "Gender", with: @person.gender_id
    fill_in "Name Person", with: @person.name_person
    fill_in "Password Person", with: @person.password_person
    fill_in "School", with: @person.school_id
    fill_in "Type Users", with: @person.type_users_id
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
