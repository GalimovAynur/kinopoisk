class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
    @director = Director.new
  end

  def edit; end

  def create
    @director = Director.new(director_params)

    if @director.save
      redirect_to @director
    else
      render :new
    end
  end

  private

  def director_params
    params.require(:director).permit(:name, :birth_date)
  end
end
