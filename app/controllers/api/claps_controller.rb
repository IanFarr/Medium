class Api::ClapsController < ApplicationController

  def create
    @clap = Clap.create!(clap_params)

    if @clap.save
      render :show
    else
      render json: @clap, status: :unprocessable_entity
    end
  end

  def destroy
    @clap = Clap.find(params[:id])

    if @clap.destroy
      render :show
    else
      render json: @Clap.errors.full_messages, status: 422
    end
  end

  private

  def clap_params
    params.require(:clap).permit(:clapper_id, :story_id)
  end

end
