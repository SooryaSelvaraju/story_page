require "test_helper"

class StoriesControllerTest < ActionDispatch::IntegrationTest
 @user={
   "user": "marredpally",
   "created_at": 1635512419,
   "title": "Don't rush to solutions",
   "url": "https://blog.abhi.se/dont-rush-to-solutions",
   "likes": 38
 }

  test "should get index" do
    get stories_path
    assert_response :success
  end

  test "should get new" do
    get new_story_path
    assert_response :success
  end

  test "should get show" do
    get story_path
    assert_response :success
  end

  test "should get create" do
    assert_difference 'Story.count',1 do
      title= "New Post"
      post stories_path({title: title})
    end
    created_story= Story.last
    assert_equal title, created_story.title
    assert_response :success
  end


end
