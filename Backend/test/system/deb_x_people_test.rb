require "application_system_test_case"

class DebXPeopleTest < ApplicationSystemTestCase
  setup do
    @deb_x_person = deb_x_people(:one)
  end

  test "visiting the index" do
    visit deb_x_people_url
    assert_selector "h1", text: "Deb X People"
  end

  test "creating a Deb x person" do
    visit deb_x_people_url
    click_on "New Deb X Person"

    fill_in "Code Debility", with: @deb_x_person.code_debility_id
    fill_in "Code Person", with: @deb_x_person.code_person_id
    fill_in "Description", with: @deb_x_person.description
    click_on "Create Deb x person"

    assert_text "Deb x person was successfully created"
    click_on "Back"
  end

  test "updating a Deb x person" do
    visit deb_x_people_url
    click_on "Edit", match: :first

    fill_in "Code Debility", with: @deb_x_person.code_debility_id
    fill_in "Code Person", with: @deb_x_person.code_person_id
    fill_in "Description", with: @deb_x_person.description
    click_on "Update Deb x person"

    assert_text "Deb x person was successfully updated"
    click_on "Back"
  end

  test "destroying a Deb x person" do
    visit deb_x_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deb x person was successfully destroyed"
  end
end
