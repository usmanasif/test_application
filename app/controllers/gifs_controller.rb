class GifsController < ApplicationController

  def index
    @gifs = Gif.all
  end

  def new
    @gif = Gif.new
  end

  def create
    gif = Gif.new(gif_params)

    if gif.save
      flash[:success] = 'GIF Uploaded Successfully!'
      redirect_to :gifs
    else
      flash[:error] = 'Failed to Upload GIF!'
    end
  end

  private

  def gif_params
    params.require(:gif).permit(:file).tap do |additional_params|
      additional_params[:user_id] = current_user.id
    end
  end
end
