require "application_system_test_case"

class TypePeopleTest < ApplicationSystemTestCase
  setup do
    @type_person = type_people(:one)
  end

  test "visiting the index" do
    visit type_people_url
    assert_selector "h1", text: "Type People"
  end

  test "creating a Type person" do
    visit type_people_url
    click_on "New Type Person"

    fill_in "Code Type", with: @type_person.code_type
    fill_in "Name Type", with: @type_person.name_type
    click_on "Create Type person"

    assert_text "Type person was successfully created"
    click_on "Back"
  end

  test "updating a Type person" do
    visit type_people_url
    click_on "Edit", match: :first

    fill_in "Code Type", with: @type_person.code_type
    fill_in "Name Type", with: @type_person.name_type
    click_on "Update Type person"

    assert_text "Type person was successfully updated"
    click_on "Back"
  end

  test "destroying a Type person" do
    visit type_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type person was successfully destroyed"
  end
end
