require 'test_helper'

class WorkExperiencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get work_experiences_index_url
    assert_response :success
  end

  test "should get show" do
    get work_experiences_show_url
    assert_response :success
  end

  test "should get edit" do
    get work_experiences_edit_url
    assert_response :success
  end

  test "should get new" do
    get work_experiences_new_url
    assert_response :success
  end

end
