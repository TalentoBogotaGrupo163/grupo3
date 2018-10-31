require "application_system_test_case"

class HabilitiesTest < ApplicationSystemTestCase
  setup do
    @hability = habilities(:one)
  end

  test "visiting the index" do
    visit habilities_url
    assert_selector "h1", text: "Habilities"
  end

  test "creating a Hability" do
    visit habilities_url
    click_on "New Hability"

    fill_in "Description Hability", with: @hability.description_hability
    fill_in "Name Hability", with: @hability.name_hability
    click_on "Create Hability"

    assert_text "Hability was successfully created"
    click_on "Back"
  end

  test "updating a Hability" do
    visit habilities_url
    click_on "Edit", match: :first

    fill_in "Description Hability", with: @hability.description_hability
    fill_in "Name Hability", with: @hability.name_hability
    click_on "Update Hability"

    assert_text "Hability was successfully updated"
    click_on "Back"
  end

  test "destroying a Hability" do
    visit habilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hability was successfully destroyed"
  end
end
