require 'test_helper'

class ApplicationHistoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get application_history_index_url
    assert_response :success
  end

end
