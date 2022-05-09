class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.find_by(id: params[:id])
    redirect_to root_path, error: 'Page with this film not found' unless @film
  end
end
