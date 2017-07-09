require 'test_helper'

class JobseekerNotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jobseeker_notifications_index_url
    assert_response :success
  end

end
