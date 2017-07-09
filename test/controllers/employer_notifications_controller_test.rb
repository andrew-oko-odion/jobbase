require 'test_helper'

class EmployerNotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employer_notifications_index_url
    assert_response :success
  end

end
