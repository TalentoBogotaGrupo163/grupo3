require "application_system_test_case"

class HabXPeopleTest < ApplicationSystemTestCase
  setup do
    @hab_x_person = hab_x_people(:one)
  end

  test "visiting the index" do
    visit hab_x_people_url
    assert_selector "h1", text: "Hab X People"
  end

  test "creating a Hab x person" do
    visit hab_x_people_url
    click_on "New Hab X Person"

    fill_in "Code Hability", with: @hab_x_person.code_hability_id
    fill_in "Code Person", with: @hab_x_person.code_person_id
    fill_in "Description", with: @hab_x_person.description
    click_on "Create Hab x person"

    assert_text "Hab x person was successfully created"
    click_on "Back"
  end

  test "updating a Hab x person" do
    visit hab_x_people_url
    click_on "Edit", match: :first

    fill_in "Code Hability", with: @hab_x_person.code_hability_id
    fill_in "Code Person", with: @hab_x_person.code_person_id
    fill_in "Description", with: @hab_x_person.description
    click_on "Update Hab x person"

    assert_text "Hab x person was successfully updated"
    click_on "Back"
  end

  test "destroying a Hab x person" do
    visit hab_x_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hab x person was successfully destroyed"
  end
end
