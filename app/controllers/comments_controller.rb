class CommentsController < ApplicationController
  def index
    @comments= Comment.all
  end

  def new
    @comment= Comment.new
    @story= Story.find(params[:story_id])
  end

  def show
    @comment= Comment.find(params[:id])
    @story= @comment.story
  end

  def create

    @comment= Comment.create(comment_params)
    flash[:notice] = "Comment was successfully created."
    redirect_to stories_path
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
