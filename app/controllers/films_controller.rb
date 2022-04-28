class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    unless Film.exists?(params[:id])
      render file: Rails.root.join('public/404.html'), layout: false, status: :not_found
      return
    end

    @film = Film.find(params[:id])
  end
end
