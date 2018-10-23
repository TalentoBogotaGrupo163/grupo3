require "application_system_test_case"

class ActivityXSubjectsTest < ApplicationSystemTestCase
  setup do
    @activity_x_subject = activity_x_subjects(:one)
  end

  test "visiting the index" do
    visit activity_x_subjects_url
    assert_selector "h1", text: "Activity X Subjects"
  end

  test "creating a Activity x subject" do
    visit activity_x_subjects_url
    click_on "New Activity X Subject"

    fill_in "Activity", with: @activity_x_subject.activity_id
    fill_in "Description", with: @activity_x_subject.description
    fill_in "Subject", with: @activity_x_subject.subject_id
    click_on "Create Activity x subject"

    assert_text "Activity x subject was successfully created"
    click_on "Back"
  end

  test "updating a Activity x subject" do
    visit activity_x_subjects_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @activity_x_subject.activity_id
    fill_in "Description", with: @activity_x_subject.description
    fill_in "Subject", with: @activity_x_subject.subject_id
    click_on "Update Activity x subject"

    assert_text "Activity x subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity x subject" do
    visit activity_x_subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity x subject was successfully destroyed"
  end
end
