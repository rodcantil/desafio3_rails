class DocumentaryfilmController < ApplicationController
  def index
    @documentaryfilm = Documentaryfilm.all
    @doculast = Documentaryfilm.last
  end

  def new
    @documentaryfilm = Documentaryfilm.new
  end

  def create
    @documentaryfilm = Documentaryfilm.new(docu_params)
    if @documentaryfilm.save
      redirect_to documentaryfilm_index_path
    else
      render :new
    end
  end

  private

  def docu_params
    params.require(:documentaryfilm).permit(:title)
  end
end
