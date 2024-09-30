class SerieController < ApplicationController
  def index
  end
  
  
  def new
    @serie = Post.all
  end
  def create
    @serie = Post.new(posts_params)
  if @serie.save
    redirect_to desafio3_index_path
  else
    render :new
  end

  private

  def posts_params
    params.require(:post).permit(:title)
  end

end
