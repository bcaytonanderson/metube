class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params["id"])
    @all = Movie.all
    puts @all
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