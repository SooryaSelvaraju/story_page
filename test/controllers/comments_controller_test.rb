require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  @comment={
    "user": "marredpally",
    "content": "Don't rush to solutions",
  }
  test "should get index" do
    get comments_path
    assert_response :success
  end

  test "should get new" do
    get new_comment_path
    assert_response :success
  end

  test "should get show" do
    get comment_path(@comment)
    assert_response :success
  end

  test "should get create" do
    assert_difference 'Comment.count',1 do
      content= "New Post"
      post comments_path({title: content})
    end
    created_comment= Comment.last
    assert_equal content, created_comment.content
    assert_response :success
  end

end
