require "application_system_test_case"

class PersonXDebilitiesTest < ApplicationSystemTestCase
  setup do
    @person_x_debility = person_x_debilities(:one)
  end

  test "visiting the index" do
    visit person_x_debilities_url
    assert_selector "h1", text: "Person X Debilities"
  end

  test "creating a Person x debility" do
    visit person_x_debilities_url
    click_on "New Person X Debility"

    fill_in "Debility", with: @person_x_debility.debility_id
    fill_in "Description", with: @person_x_debility.description
    fill_in "Person", with: @person_x_debility.person_id
    click_on "Create Person x debility"

    assert_text "Person x debility was successfully created"
    click_on "Back"
  end

  test "updating a Person x debility" do
    visit person_x_debilities_url
    click_on "Edit", match: :first

    fill_in "Debility", with: @person_x_debility.debility_id
    fill_in "Description", with: @person_x_debility.description
    fill_in "Person", with: @person_x_debility.person_id
    click_on "Update Person x debility"

    assert_text "Person x debility was successfully updated"
    click_on "Back"
  end

  test "destroying a Person x debility" do
    visit person_x_debilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person x debility was successfully destroyed"
  end
end
