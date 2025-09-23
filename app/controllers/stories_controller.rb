class StoriesController < ApplicationController
  def index

    @stories =  Story.all.order("created_at DESC")
  end

  def new
    @story = Story.new
  end

  def show
    @story = Story.find(params[:id])
    story = Story.find(params[:id])
    @comments = Comment.where(story_id: story.id).order("created_at DESC")
    comments = Comment.where(story_id: story.id).first
    @resposnsecoment= ResponseComment.where(comment_id: comments.id).count

  end

  def create
    @story = Story.new(story_params)
    if @story.save
    flash[:notice] = "Story was successfully created."
    redirect_to story_path(@story)
    else
      flash[:notice] = "Story was not created details needed."
      redirect_to new_story_path
    end
  end

  def edit
    @story= Story.find(params[:id])
  end

  def update
    @story= Story.find(params[:id])
    like=(@story.upvotes.to_i || 0)+1
    @story.update(upvotes: like)

    flash[:notice] = "Story was successfully updated."
    redirect_to story_path(@story)
  end


  private

  def story_params
    params.require(:story).permit(:title, :url,:description, :upvotes, :user)
  end
end
