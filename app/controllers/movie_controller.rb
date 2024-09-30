class MovieController < ApplicationController
  def index
  end
  
  
  def new
    @movie = Movie.new
  end
  def create
      @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_index_path
    else
      render :new
    end
  end
  
  private

  def movie_params
    params.require(:movie).permit(:title)
  end

end
