require "application_system_test_case"

class DebilityXPeopleTest < ApplicationSystemTestCase
  setup do
    @debility_x_person = debility_x_people(:one)
  end

  test "visiting the index" do
    visit debility_x_people_url
    assert_selector "h1", text: "Debility X People"
  end

  test "creating a Debility x person" do
    visit debility_x_people_url
    click_on "New Debility X Person"

    fill_in "Debility", with: @debility_x_person.debility_id
    fill_in "Description", with: @debility_x_person.description
    fill_in "People", with: @debility_x_person.people_id
    click_on "Create Debility x person"

    assert_text "Debility x person was successfully created"
    click_on "Back"
  end

  test "updating a Debility x person" do
    visit debility_x_people_url
    click_on "Edit", match: :first

    fill_in "Debility", with: @debility_x_person.debility_id
    fill_in "Description", with: @debility_x_person.description
    fill_in "People", with: @debility_x_person.people_id
    click_on "Update Debility x person"

    assert_text "Debility x person was successfully updated"
    click_on "Back"
  end

  test "destroying a Debility x person" do
    visit debility_x_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debility x person was successfully destroyed"
  end
end
