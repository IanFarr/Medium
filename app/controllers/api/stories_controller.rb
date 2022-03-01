class Api::StoriesController < ApplicationController

  def create
    @story = Story.create!(story_params)
    render :show
  end

  def show
    @story = Story.find(params[:id])
  end

  def index
    @stories = Story.all
    render :index
  end

  private

  def story_params
    params.require(:story).permit(:title, :body, :tags, :author, :author_id, :created_at)
  end

end
