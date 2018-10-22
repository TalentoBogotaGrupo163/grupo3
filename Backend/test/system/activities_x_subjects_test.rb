require "application_system_test_case"

class ActivitiesXSubjectsTest < ApplicationSystemTestCase
  setup do
    @activities_x_subject = activities_x_subjects(:one)
  end

  test "visiting the index" do
    visit activities_x_subjects_url
    assert_selector "h1", text: "Activities X Subjects"
  end

  test "creating a Activities x subject" do
    visit activities_x_subjects_url
    click_on "New Activities X Subject"

    fill_in "Activities", with: @activities_x_subject.Activities_id
    fill_in "Subjects", with: @activities_x_subject.Subjects_id
    fill_in "Description", with: @activities_x_subject.description
    click_on "Create Activities x subject"

    assert_text "Activities x subject was successfully created"
    click_on "Back"
  end

  test "updating a Activities x subject" do
    visit activities_x_subjects_url
    click_on "Edit", match: :first

    fill_in "Activities", with: @activities_x_subject.Activities_id
    fill_in "Subjects", with: @activities_x_subject.Subjects_id
    fill_in "Description", with: @activities_x_subject.description
    click_on "Update Activities x subject"

    assert_text "Activities x subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Activities x subject" do
    visit activities_x_subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activities x subject was successfully destroyed"
  end
end
