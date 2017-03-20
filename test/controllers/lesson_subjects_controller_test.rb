require 'test_helper'

class LessonSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_subject = lesson_subjects(:one)
  end

  test "should get index" do
    get lesson_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_subject_url
    assert_response :success
  end

  test "should create lesson_subject" do
    assert_difference('LessonSubject.count') do
      post lesson_subjects_url, params: { lesson_subject: { lesson_id: @lesson_subject.lesson_id, subject_id: @lesson_subject.subject_id } }
    end

    assert_redirected_to lesson_subject_url(LessonSubject.last)
  end

  test "should show lesson_subject" do
    get lesson_subject_url(@lesson_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_subject_url(@lesson_subject)
    assert_response :success
  end

  test "should update lesson_subject" do
    patch lesson_subject_url(@lesson_subject), params: { lesson_subject: { lesson_id: @lesson_subject.lesson_id, subject_id: @lesson_subject.subject_id } }
    assert_redirected_to lesson_subject_url(@lesson_subject)
  end

  test "should destroy lesson_subject" do
    assert_difference('LessonSubject.count', -1) do
      delete lesson_subject_url(@lesson_subject)
    end

    assert_redirected_to lesson_subjects_url
  end
end
