require "application_system_test_case"

class DebilitiesTest < ApplicationSystemTestCase
  setup do
    @debility = debilities(:one)
  end

  test "visiting the index" do
    visit debilities_url
    assert_selector "h1", text: "Debilities"
  end

  test "creating a Debility" do
    visit debilities_url
    click_on "New Debility"

    fill_in "Code Debility", with: @debility.code_debility
    fill_in "Description Debility", with: @debility.description_debility
    fill_in "Name Debility", with: @debility.name_debility
    click_on "Create Debility"

    assert_text "Debility was successfully created"
    click_on "Back"
  end

  test "updating a Debility" do
    visit debilities_url
    click_on "Edit", match: :first

    fill_in "Code Debility", with: @debility.code_debility
    fill_in "Description Debility", with: @debility.description_debility
    fill_in "Name Debility", with: @debility.name_debility
    click_on "Update Debility"

    assert_text "Debility was successfully updated"
    click_on "Back"
  end

  test "destroying a Debility" do
    visit debilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debility was successfully destroyed"
  end
end
