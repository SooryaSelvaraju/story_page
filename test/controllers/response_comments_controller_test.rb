require "test_helper"

class ResponseCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get response_comments_index_url
    assert_response :success
  end

  test "should get new" do
    get response_comments_new_url
    assert_response :success
  end

  test "should get show" do
    get response_comments_show_url
    assert_response :success
  end

  test "should get create" do
    get response_comments_create_url
    assert_response :success
  end

  test "should get edit" do
    get response_comments_edit_url
    assert_response :success
  end

  test "should get update" do
    get response_comments_update_url
    assert_response :success
  end
end
