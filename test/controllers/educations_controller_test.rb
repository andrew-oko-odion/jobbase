require 'test_helper'

class EducationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get educations_index_url
    assert_response :success
  end

  test "should get edit" do
    get educations_edit_url
    assert_response :success
  end

  test "should get delete" do
    get educations_delete_url
    assert_response :success
  end

end
