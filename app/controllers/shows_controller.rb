class ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

  def new
    @prog = Show.new
  end

  def create
      # params[:puppy] => {:name => 'some name', :age => '99'}
      # Puppy.create(params[:puppy]) => can't do this- will throw a Forbidden Attributes Error. Must use strong parameters.
      @prog = Show.new(prog_params)
      # When you create something, you MUST redirect somewhere else.
      if @prog.save
        redirect_to "/shows/#{@prog.id}"
      else
        render 'new'
      end
  end

  def edit
    @prog = Show.find(params[:id])
  end

  def update
    @prog = Show.find(params[:id])
    @prog.update(prog_params)
    redirect_to '/shows/#{@prog.id}'
  end

  def destroy
    @prog = Show.find(params[:id])
    @prog.destroy
    redirect_to '/shows'
  end

  def show
    @show = Show.find(params["id"])
  end


private

  def prog_params
    # we must explicitly permit the parameters we will allow
    params.require(:show).permit(:title, :subtitle, :description, :video_id) 
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
