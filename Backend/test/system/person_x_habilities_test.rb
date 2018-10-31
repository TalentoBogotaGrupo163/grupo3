require "application_system_test_case"

class PersonXHabilitiesTest < ApplicationSystemTestCase
  setup do
    @person_x_hability = person_x_habilities(:one)
  end

  test "visiting the index" do
    visit person_x_habilities_url
    assert_selector "h1", text: "Person X Habilities"
  end

  test "creating a Person x hability" do
    visit person_x_habilities_url
    click_on "New Person X Hability"

    fill_in "Description", with: @person_x_hability.description
    fill_in "Hability", with: @person_x_hability.hability_id
    fill_in "Person", with: @person_x_hability.person_id
    click_on "Create Person x hability"

    assert_text "Person x hability was successfully created"
    click_on "Back"
  end

  test "updating a Person x hability" do
    visit person_x_habilities_url
    click_on "Edit", match: :first

    fill_in "Description", with: @person_x_hability.description
    fill_in "Hability", with: @person_x_hability.hability_id
    fill_in "Person", with: @person_x_hability.person_id
    click_on "Update Person x hability"

    assert_text "Person x hability was successfully updated"
    click_on "Back"
  end

  test "destroying a Person x hability" do
    visit person_x_habilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person x hability was successfully destroyed"
  end
end
