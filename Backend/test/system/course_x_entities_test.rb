require "application_system_test_case"

class CourseXEntitiesTest < ApplicationSystemTestCase
  setup do
    @course_x_entity = course_x_entities(:one)
  end

  test "visiting the index" do
    visit course_x_entities_url
    assert_selector "h1", text: "Course X Entities"
  end

  test "creating a Course x entity" do
    visit course_x_entities_url
    click_on "New Course X Entity"

    fill_in "Courses", with: @course_x_entity.Courses_id
    fill_in "Entity", with: @course_x_entity.Entity_id
    fill_in "Description", with: @course_x_entity.description
    click_on "Create Course x entity"

    assert_text "Course x entity was successfully created"
    click_on "Back"
  end

  test "updating a Course x entity" do
    visit course_x_entities_url
    click_on "Edit", match: :first

    fill_in "Courses", with: @course_x_entity.Courses_id
    fill_in "Entity", with: @course_x_entity.Entity_id
    fill_in "Description", with: @course_x_entity.description
    click_on "Update Course x entity"

    assert_text "Course x entity was successfully updated"
    click_on "Back"
  end

  test "destroying a Course x entity" do
    visit course_x_entities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course x entity was successfully destroyed"
  end
end
