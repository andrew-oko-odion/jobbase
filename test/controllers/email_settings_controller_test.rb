require 'test_helper'

class EmailSettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get email_settings_index_url
    assert_response :success
  end

  test "should get show" do
    get email_settings_show_url
    assert_response :success
  end

  test "should get edit" do
    get email_settings_edit_url
    assert_response :success
  end

end
