require "test_helper"

class ResponseCommentsControllerTest < ActionDispatch::IntegrationTest
  @response_comment={
    "user": "marredpally",
    "content": "Don't rush to solutions",
  }
  test "should get index" do
    get response_comments_path
    assert_response :success
  end

  test "should get new" do
    get new_response_comment_path
    assert_response :success
  end

  test "should get show" do
    get response_comment_path(@response_comment)
    assert_response :success
  end

  test "should get create" do
    assert_difference 'ResponseComment.count',1 do
      content= "New Post"
      post stories_path({title: content})
    end
    created_response= ResponseComment.last
    assert_equal content, created_response.content
    assert_response :success
  end


end
