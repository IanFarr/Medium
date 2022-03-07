class Api::SavesController < ApplicationController
  before_action :require_logged_in

  def create
    @save = Save.create!(save_params)

    if @save.save
      render :show
    else
      render json: @save, status: :unprocessable_entity
    end
  end

  def show
    @save = Save.find(params[:id])
  end

  def destroy
    @save = Save.find(params[:id])

    if @save.destroy
      render :show
    else
      render json: @save.errors.full_messages, status: 422
    end
  end

  private

  def save_params
    params.require(:save).permit(:user_id, :story_id)
  end
  
end
