class StoriesController < ApplicationController
  def index
    @stories =  Story.all
  end

  def new
    @story = Story.new
  end

  def show
    @story = Story.find(params[:id])
    story = Story.find(params[:id])
    @comments = Comment.where(story_id: story.id).order("created_at DESC")

  end

  def create
    @story = Story.create(story_params)
    flash[:notice] = "Story was successfully created."
    redirect_to story_path(@story)
  end

  def edit
    @story= Story.find(params[:id])
  end

  def update
    @story= Story.find(params[:id])
    @story.update(story_params)
    flash[:notice] = "Story was successfully updated."
  end

  private

  def story_params
    params.require(:story).permit(:title, :url,:description, :upvotes, :user)
  end
end
