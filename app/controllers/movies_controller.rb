class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @mov = Movie.new
  end

  def create
    @mov = Movie.new(mov_params)
    if @mov.save
      redirect_to "/movies/#{@mov.id}"
    else
      render 'new'
    end
  end

  def edit
    @mov = Movie.find(params[:id])
  end

  def update
    @mov = Movie.find(params[:id])
    @mov.update(mov_params)
    redirect_to '/movies/#{@mov.id}'
  end

  def destroy
    @mov = Movie.find(params[:id])
    @mov.destroy
    redirect_to '/movies'
  end

  def show
    @movie = Movie.find(params["id"])
    @all = Movie.all
  end


private

  def mov_params
    # we must explicitly permit the parameters we will allow
    params.require(:movie).permit(:title, :subtitle, :description, :video_id) 
  end
end
  # def show_gladiator
  #   @title = 'Gladiator'
  #   @description = "Russel Crow is a boss in this video"
  #   @subtitle = "Gladiator 'Are You Not Entertained' Scene"
  #   @video_id = "//www.youtube.com/embed/FI1ylg4GKv8"
  # end 

  # def show_matilda
  #   @title = 'Matilda'
  #   @description = "This movie is just great. Who agrees?"
  #   @subtitle = "Bruce's brownie scene"
  #   @video_id = "//www.youtube.com/embed/EVWOQwZENBg"
  # end

  # def show_oldboy
  #   @title = "Oldboy"
  #   @description = "The best fight scene ever filmed."
  #   @subtitle = "Oldboy: The Corridor Fight"
  #   @video_id = "//www.youtube.com/embed/VwIIDzrVVdc"
  # end

  # def show_cube
  #   @title = "Cube"
  #   @description = "The first scene in Cube."
  #   @subtitle = "Slice and Dice"
  #   @video_id = "//www.youtube.com/embed/k8Tw4JhzORM"
  # end