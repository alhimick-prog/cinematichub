class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.find_by(id: params[:id])
    redirect_to controller: 'errors', action: 'show', id: '404' unless @film
  end
end
