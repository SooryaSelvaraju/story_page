class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
    @story = Story.find(params[:story_id])
  end

  def show
    @comment = Comment.find(params[:id])
    @story = @comment.story
  end

  def create

    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment was successfully created."
      redirect_to stories_path
    else
      flash[:notice] = "Comment was not created details needed"
      redirect_to new_comment_path
    end
  end

  def edit

  end

  def update
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user, :story_id)
  end
end
