class TvShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params["id"])
  end

  def create
      # params[:puppy] => {:name => 'some name', :age => '99'}
      # Puppy.create(params[:puppy]) => can't do this- will throw a Forbidden Attributes Error. Must use strong parameters.
      pup = Puppy.new(puppy_params)
      # When you create something, you MUST redirect somewhere else.
      if pup.save
        redirect_to "puppies/#{pup.id}"
      else
        # NEXT TIME: VALIDATE EXISTENCE AND SHOW FORM ERRORS WHEN INPUT IS INVALID
      end
  end

private

  def puppy_params
    # we must explicitly permit the parameters we will allow
    params.require(:puppy).permit(:name, :age) 
  end
end
  # def show_seinfeld
  #   @title = "Seinfeld"
  #   @description = "This show is pretty boring."
  #   @subtitle = "Observational humor done poorly."
  #   @video_id = "//www.youtube.com/embed/PaPxSsK6ZQA"
  # end

  # def show_friends
  #   @title = "Friends"
  #   @description = "This show is lame."
  #   @subtitle = "Don't watch this."
  #   @video_id = "//www.youtube.com/embed/R5Ty4e2UVME"
  # end
