require 'test_helper'

class JobcartControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jobcart_index_url
    assert_response :success
  end

  test "should get show" do
    get jobcart_show_url
    assert_response :success
  end

  test "should get new" do
    get jobcart_new_url
    assert_response :success
  end

  test "should get edit" do
    get jobcart_edit_url
    assert_response :success
  end

end
