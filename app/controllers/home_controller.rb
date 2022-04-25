class HomeController < ApplicationController
  def index
    @widget_size = 5
    # Search for films by genre will be carried out as
    # Film.where(genre: 'genre name').sample(@widget_size)
    # or Film.includes(:genres).where(genres: { name: 'genre name' }).order(rating: :desc).limit(@widget_size)
    # when genres will be added
    @action_movies = Film.all.sample(@widget_size)
    @westerns = Film.all.sample(@widget_size)
    @gangsters = Film.all.sample(@widget_size)
    @detectives = Film.all.sample(@widget_size)
    @drama = Film.all.sample(@widget_size)
    @history = Film.all.sample(@widget_size)
    @comedy = Film.all.sample(@widget_size)
    @melodramas = Film.all.sample(@widget_size)
    @musicals = Film.all.sample(@widget_size)
    @noir = Film.all.sample(@widget_size)
  end
end
