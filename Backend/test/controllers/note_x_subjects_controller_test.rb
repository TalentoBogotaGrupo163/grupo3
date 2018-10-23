require 'test_helper'

class NoteXSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @note_x_subject = note_x_subjects(:one)
  end

  test "should get index" do
    get note_x_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_note_x_subject_url
    assert_response :success
  end

  test "should create note_x_subject" do
    assert_difference('NoteXSubject.count') do
      post note_x_subjects_url, params: { note_x_subject: { description: @note_x_subject.description, note_id: @note_x_subject.note_id, subject_id: @note_x_subject.subject_id } }
    end

    assert_redirected_to note_x_subject_url(NoteXSubject.last)
  end

  test "should show note_x_subject" do
    get note_x_subject_url(@note_x_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_note_x_subject_url(@note_x_subject)
    assert_response :success
  end

  test "should update note_x_subject" do
    patch note_x_subject_url(@note_x_subject), params: { note_x_subject: { description: @note_x_subject.description, note_id: @note_x_subject.note_id, subject_id: @note_x_subject.subject_id } }
    assert_redirected_to note_x_subject_url(@note_x_subject)
  end

  test "should destroy note_x_subject" do
    assert_difference('NoteXSubject.count', -1) do
      delete note_x_subject_url(@note_x_subject)
    end

    assert_redirected_to note_x_subjects_url
  end
end
