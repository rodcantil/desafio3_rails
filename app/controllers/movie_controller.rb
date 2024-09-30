class MovieController < ApplicationController
  def index
  end
  
  
  def new
    @movie = Movie.new
  end
  def create
      @movie = Movie.new(posts_params)
    if @movie.save
      redirect_to movie_index_path
    else
      render :new
    end
  end
  
  private

  def posts_params
    params.require(:post).permit(:title, :content)
  end

end
