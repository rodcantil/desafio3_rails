class SerieController < ApplicationController
  def index
    @serie = Serie.all
    @serielast = Serie.last
  end
  
  
  def new
    @serie = Serie.new
  end
    def create
        @serie = Serie.new(serie_params)
      if @serie.save
        redirect_to serie_index_path
      else
        render :new
      end
    end

  private

  def serie_params
    params.require(:serie).permit(:title)
  end

end
