require 'test_helper'

class UrlControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get url_new_url
    assert_response :success
  end

  test "should get create" do
    get url_create_url
    assert_response :success
  end

  test "should get fwd" do
    get url_fwd_url
    assert_response :success
  end

  test "should get list" do
    get url_list_url
    assert_response :success
  end

end
