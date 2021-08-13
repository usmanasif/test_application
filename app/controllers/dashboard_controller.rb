class DashboardController < ApplicationController
  skip_before_action :authenticate_user!, only: :index, raise: false

  def index
    @gifs = Gif.all

    render template: 'gifs/index'
  end
end
