class Api::ListsController < ApplicationController

  def create
    @list = List.create!(list_params)

    if @list.save
      render :show
    else
      render json: @list, status: :unprocessable_entity
    end
  end

  def index
    @lists = List.all
    render :index
  end

  def destroy
    @list = List.find(params[:id])

    if @list.destroy
      render :show
    else
      render json: @list.errors.full_messages, status: 422
    end
  end

  private

  def list_params
    params.require(:list).permit(:user_id, :story_id)
  end

end