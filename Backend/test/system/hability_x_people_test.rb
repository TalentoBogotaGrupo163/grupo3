require "application_system_test_case"

class HabilityXPeopleTest < ApplicationSystemTestCase
  setup do
    @hability_x_person = hability_x_people(:one)
  end

  test "visiting the index" do
    visit hability_x_people_url
    assert_selector "h1", text: "Hability X People"
  end

  test "creating a Hability x person" do
    visit hability_x_people_url
    click_on "New Hability X Person"

    fill_in "Description", with: @hability_x_person.description
    fill_in "Hability", with: @hability_x_person.hability_id
    fill_in "People", with: @hability_x_person.people_id
    click_on "Create Hability x person"

    assert_text "Hability x person was successfully created"
    click_on "Back"
  end

  test "updating a Hability x person" do
    visit hability_x_people_url
    click_on "Edit", match: :first

    fill_in "Description", with: @hability_x_person.description
    fill_in "Hability", with: @hability_x_person.hability_id
    fill_in "People", with: @hability_x_person.people_id
    click_on "Update Hability x person"

    assert_text "Hability x person was successfully updated"
    click_on "Back"
  end

  test "destroying a Hability x person" do
    visit hability_x_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hability x person was successfully destroyed"
  end
end
