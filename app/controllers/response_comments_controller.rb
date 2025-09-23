class ResponseCommentsController < ApplicationController
  def index
    @response_comments = ResponseComment.all
  end

  def new
    @response_comment = ResponseComment.new
    @comment = Comment.find(params[:comment_id])
  end

  def show
    @response_comment = ResponseComment.find(params[:id])
    @response_comment = @response_comment.comment
  end

  def create

    @response_comment = ResponseComment.new(response_comment_params)
    if @response_comment.save
      flash[:notice] = "Successfully created response comment."
      redirect_to stories_path
    else
      flash[:notice] = "Unable to create response comment details needed."
      redirect_to new_response_comment_path
    end

  end

  def edit
  end

  def update
  end

  private

  def response_comment_params
    params.require(:response_comment).permit(:content, :user, :comment_id)
  end
end
