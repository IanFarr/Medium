class Api::StoriesController < ApplicationController

  def create
    @story = Story.create!(story_params)
    render :show
  end

  def show
    @story = Story.find(params[:id])
    render :show
  end

  def index
    @stories = Story.all
    render :index
  end

  def update
    @story = Story.find(params[:id])

    if @story.update(story_params)
      render :show
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def destroy
    @story = Story.find(params[:id])

    if @story.destroy
      render :show
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :body, :author, :author_id, :created_at, :photo, tags: [])
  end

end
